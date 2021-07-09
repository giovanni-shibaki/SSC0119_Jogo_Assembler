jmp main

full: var #1
savePos: var #1
winner: var #2

v0 : string "          "

x1 : string "X        X"
x2 : string " X      X "
x3 : string "  X    X  "
x4 : string "   X  X   "
x5 : string "    XX    "

o1 : string "    OO    "
o2 : string "   OOOO   "               
o3 : string "  O    O  "
o4 : string " O      O " ; essa string deve ser impressa 3 vezes seguidas

instruction0 : string "-Pressione Espaco Para Iniciar-"
instruction1 : string " Enter para fazer a jogada e numeros do    teclado para selecionar a posicao"
strWin : string " Ganhou!!"

vetPos : var #10
	static vetPos + #0, #0
	static vetPos + #1, #2
	static vetPos + #2, #2
	static vetPos + #3, #2
	static vetPos + #4, #2
	static vetPos + #5, #2
	static vetPos + #6, #2
	static vetPos + #7, #2
	static vetPos + #8, #2
	static vetPos + #9, #2

vetPix : var #10
	static vetPix + #0, #25
	static vetPix + #1, #5
	static vetPix + #2, #15
	static vetPix + #3, #25
	static vetPix + #4, #365
	static vetPix + #5, #375
	static vetPix + #6, #385
	static vetPix + #7, #725
	static vetPix + #8, #735
	static vetPix + #9, #745

; notas sobre as posições da tela
;5   15  25
;365 375 385
;725 735 745


main:
	call clearVet
	;imprime inst0
	loadn r0, #525
	loadn r1, #instruction0
	loadn r2, #3328
	call Imprimestr 
	
	;imprime inst1
	loadn r0, #560
	loadn r1, #instruction1
	loadn r2, #3584
	call Imprimestr 
	
	init:;le espaço p/ iniciar
		loadn r1, #2
		store winner, r1
		call keyboard
		loadn r5, #' '
		cmp r3, r5
		jne end
		call startGame
		jmp main
		
		end:
			halt

;-------------------------------------startGame------------------------------------------
startGame:
	push r3
	push r4
	push r5
	push r6
	push r7
	
	call clrScrn ;limpa a tela
	loadn r6, #9 ;r6 guarda 9 para ver se o tabuleiro esta cheio
	loadn r7, #0
	loopStart:
		;verifica se o tabuleiro está cheio
		loadn r5, #full
		loadi r5, r5
		cmp r5, r6
		jeq endGame
		
		call turn
		not r7, r7 ;if 0, r7 = 1 && if 1, r7 = 0
		
		call checkWin
		load r3, winner
		loadn r4, #2
		cmp r3, r4
		jeq loopStart ;proximo turno
		
	endGame:
		
		call keyboard
		pop r7
		pop r6
		pop r5
		pop r4
		pop r3
		rts
		
printDebug:
	push r6
	push r7
	
	loadn r7, #1
	loadn r6, #'@'
	;mov r6, r3
	;mov r7, r3
	
	outchar r6, r7
	
	pop r7
	pop r6
	rts

;-------------------------------------turn------------------------------------------
turn:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	
	loopTurn:
		call keyboard ;Le posicao
		newTry:
		loadn r6, #48 ;subtrai 48 p/ chegar ao numero
		sub r3, r3, r6
		loadn r6, #9
		cmp r3, r6
		jgr loopTurn ;se posicao > 9, volta
		
		loadn r5, #vetPos
		add r5, r5, r3 ; soma a posição ao vetor
		loadi r5, r5 ;carrega a presença na posicao
		loadn r6, #2
		cmp r5, r6
		jne loopTurn ;se hover algo que não seja 2 na posição, volta
		
		;printar na posição
		loadn r5, #vetPix
		add r5, r5, r3 ; soma a posição ao vetor
		loadi r0, r5
		loadn r2, #2304 ;cor nao selecionado
		call print
		store savePos, r3
		call keyboard
		call clrSelection
		loadn r5, #13
		cmp r3, r5
		jne newTry
		
		;se a posicao foi selecionada
		loadn r2, #3328 ;cor rosa p/ o X
		loadn r5, #0
		cmp r5, r7
		jeq endTurn
		loadn r2, #3584 ; cor AQUA p/ o O
		
	endTurn:
	call print
	call updateTable
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
		
checkWin:
	push r0
	push r1
	push r2
	push r3 ;ganhador
	push r4
	
	loadn r3, #2
	loadn r4, #2
	
	loadn r0,#1
	loadn r1,#5
	loadn r2,#9
	call samePlayer
	cmp r4, r3
	jne win
	
	loadn r0,#3
	loadn r1,#5
	loadn r2,#7
	call samePlayer
	cmp r4, r3
	jne win
	
	loadn r0,#1
	loadn r1,#2
	loadn r2,#3
	call samePlayer
	cmp r4, r3
	jne win
	
	loadn r0,#4
	loadn r1,#5
	loadn r2,#6
	call samePlayer
	cmp r4, r3
	jne win
	
	loadn r0,#7
	loadn r1,#8
	loadn r2,#9
	call samePlayer
	cmp r4, r3
	jne win
	
	loadn r0,#1
	loadn r1,#4
	loadn r2,#7
	call samePlayer
	cmp r4, r3
	jne win
	
	loadn r0,#2
	loadn r1,#5
	loadn r2,#8
	call samePlayer
	cmp r4, r3
	jne win

	loadn r0,#3
	loadn r1,#6
	loadn r2,#9
	call samePlayer
	cmp r4, r3
	jne win
	
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
	win:
		store winner, r3
		
		call clrScrn
		
		loadn r0, #537
		loadn r1, #strWin
		loadn r2, #1024 
		call Imprimestr
		
		loadn r4, #0
		cmp r3, r4
		
		loadn r0, #535
		loadn r1, #'X'
		jeq xWon
		
		loadn r1, #'O'
		
		xWon:
		outchar r1, r0
		
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0
		rts
		
	
samePlayer:
	push r0
	push r1
	push r2
	push r4

	loadn r4, #vetPos
	
	add r0, r4, r0
	loadi r0, r0
	
	add r1, r4, r1
	loadi r1, r1
	
	add r2, r4, r2
	loadi r2, r2
	
	cmp r0, r1
	jne endSame
	
	cmp r1, r2
	jne endSame
	
	mov r3, r2
	
	endSame:
	pop r4
	pop r2
	pop r1
	pop r0	
	rts
	
updateTable:
	push r3
	push r5
	push r6
	
	load r3, savePos
	loadn r5, #vetPos
	add r5, r5, r3
	storei r5, r7
	
	load r5, full
	inc r5
	store full, r5
	
	pop r6
	pop r5
	pop r3
	rts
	
clrSelection:
	push r0 ;posicao de print
	push r1 ;string
	push r4 ;contador
	
	loadn r4, #40
	
	loadn r1, #v0
	call Imprimestr
	
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	add r0, r0, r4
	call Imprimestr
	
	pop r4
	pop r1
	pop r0
	rts
print:
	push r0 ;posicao de print
	push r5 ;verifica turno do x ou o
	push r4	;contador
	
	loadn r4, #40
	
	loadn r5, #0
	cmp r5, r7
	jne oPrint
	
	;turno do x
	loadn r1, #x1
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x2
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x3
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x4
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x5
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x4
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x3
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x2
	call Imprimestr
	
	add r0, r0, r4
	loadn r1, #x1
	call Imprimestr
	
	jmp endPrint
	
	oPrint:
		loadn r1, #o1
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o2
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o3
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o4
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o4 
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o4
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o3
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o2
		call Imprimestr
		
		add r0, r0, r4
		loadn r1, #o1
		call Imprimestr
		jmp endPrint
		
	endPrint:
		pop r4
		pop r5
		pop r0
		
		rts

keyboard:
	push r5
	loadn r5, #255
	keyLoop:
		inchar r3
		cmp r3, r5 ;se r3 == 255 ler dnv
		jeq keyLoop
	pop r5
	rts
	
clrScrn:
	push r0
	push r1
	loadn r0, #1200
	loadn r1, #' '
	clrLoop:
		dec r0
		outchar r1, r0
		jnz clrLoop
	pop r1
	pop r0
rts

Imprimestr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	loadn r3, #'\0'	; Criterio de parada
ImprimestrLoop:	
	loadi r4, r1
	cmp r4, r3
	jeq ImprimestrSai
	add r4, r2, r4
	outchar r4, r0
	inc r0
	inc r1
	jmp ImprimestrLoop
ImprimestrSai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
clearVet:
	push r1
	push r2
	push r3
	push r4
	push r5
	
	loadn r5, #0 ;igualado
	
	store full, r5
	store savePos, r5
	
	loadn r1, #vetPos
	loadn r2, #1 ;somando
	loadn r3, #9 ;k
	loadn r4, #0 ;contador
	loadn r5, #2 ;igualado
			
	loopClear:
		add r1, r1, r2 ;pos++
		storei r1, r5
		
		add r4, r4, r2 ;i++
		cmp r4, r3
		jne loopClear
		
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	rts