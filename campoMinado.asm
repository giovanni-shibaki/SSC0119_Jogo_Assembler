; ------- TABELA DE CORES -------

; adicione ao caracter para Selecionar a cor correspondente

; 0 branco							0000 0000
; 256 marrom						0001 0000
; 512 verde							0010 0000
; 768 oliva							0011 0000
; 1024 azul marinho					0100 0000
; 1280 roxo							0101 0000
; 1536 teal							0110 0000
; 1792 prata						0111 0000
; 2048 cinza						1000 0000
; 2304 vermelho						1001 0000
; 2560 lima							1010 0000
; 2816 amarelo						1011 0000
; 3072 azul							1100 0000
; 3328 rosa							1101 0000
; 3584 aqua							1110 0000
; 3840 branco						1111 0000

jmp main

; ------- DADOS SOBRE O CAMPO -------

; Campo de 14x14 = 196 posições
; 20 bombas no campo

; ------- VARIÁVEIS DO SISTEMA -------

numBandeiras: var #1
posPonteiro: var #1
numQuadradosRemovidos: var #1

; ------- STRINGS UTILIZADAS -------

bomba1:	string "         ####                   \n"         
bomba2: string "   ##  ##    ##                 \n"    
bomba3: string "               ##               \n"   
bomba4: string "  #    ##        ##             \n" 
bomba5: string "     ##      ##########         \n"      
bomba6: string "             ##########         \n"          
bomba7: string "         ##################     \n"    
bomba8: string "       ######################   \n"      
bomba9: string "      #######################   \n"     
bomba10: string "    ########################## \n"      
bomba11: string "    ################  ######## \n"     
bomba12: string "      ##############  ######   \n"       
bomba13: string "      ############  ########   \n"      
bomba14: string "        ##################     \n"         
bomba15: string "          ##############       \n"          
bomba16: string "              ######           \n"            

flag1: string "	    ##				 \n"
flag2: string "       #### 			 \n"
flag3: string "	    ##				 \n"
flag4: string "	   	## ###########	 \n"
flag5: string "	    ## ############	 \n"
flag6: string "	    ## ############# \n"
flag7: string "		## ############# \n"
flag8: string "		## ############	 \n"
flag9: string "		## ##########	 \n"
flag10: string "	    ##				 \n"
flag11: string "	    ## 				 \n"
flag12: string "	    ## 				 \n"
flag13: string "	    ## 				 \n"
flag14: string "  ##############		 \n"
flag15: string " ################		 \n"
flag16: string " ################		 \n"

strCampo1: string "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
strCampo2: string "& & & & & & & & & & & & & & &"

; caracteres possíveis para o charmap ][{}*&><

instruction0: string "-Pressione Espaco Para Iniciar-"
instruction1: string " Enter para fazer a jogada e numeros do    teclado para selecionar a posicao"
strWin: string " Ganhou!!"

derrota1: string "Mensagem de derrota aqui"
derrota2: string "Mensagem de derrota aqui"

vitoria1: string "Mensagem de vitórioa aqui"
vitoria2: string "Mensagem de vitória aqui"

; ------- TABELA DE POSIÇÕES DE ELEMENTOS NO CAMPO -------

; Valores do vetor do campo para posições, bombas e bandeiras
; 0 -> 0 bombas em volta
; 1 -> 1 bomba em volta
; 2 -> 2 bombas em volta
; 3 -> 3 bombas em volta
; 4 -> 4 bombas em volta
; 5 -> 5 bombas em volta
; 6 -> 6 bombas em volta
; 7 -> 7 bombas em volta
; 8 -> 8 bombas em volta

; 9 -> bomba
; 0 + 10 -> bandeira sem bomba com 0 bombas em volta
; 1 + 10 -> bandeira sem bomba com 1 bomba em volta
; 2 + 10 -> bandeira sem bomba com 2 bombas em volta
; 3 + 10 -> bandeira sem bomba com 3 bombas em volta
; 4 + 10 -> bandeira sem bomba com 4 bombas em volta
; 5 + 10 -> bandeira sem bomba com 5 bombas em volta
; 6 + 10 -> bandeira sem bomba com 6 bombas em volta
; 7 + 10 -> bandeira sem bomba com 7 bombas em volta
; 8 + 10 -> bandeira sem bomba com 8 bombas em volta

; 9 + 10 -> bandeira com bomba

; 20 -> posição revelada
; Quando a posição está revelada e o player clica no botão de ação nada acontece

; mover ponteiro -> w,a,s,d
; botoes de acao -> k,l

; w = 119
; a = 97
; s = 115
; d = 100
; k = 107
; l = 108

; ------- CAMPO MINADO -------

; Vetor que representa o campo minado. Os valores de cada índice representa se tem bomba, se não tem ou se está bom bandeira
vetCampo1 : var #196
	static vetCampo1 + #0, #0
	static vetCampo1 + #1, #0
	static vetCampo1 + #2, #0
	static vetCampo1 + #3, #0
	static vetCampo1 + #4, #0
	static vetCampo1 + #5, #0
	static vetCampo1 + #6, #0
	static vetCampo1 + #7, #0
	static vetCampo1 + #8, #0
	static vetCampo1 + #9, #0
	static vetCampo1 + #10, #0
	static vetCampo1 + #11, #0
	static vetCampo1 + #12, #0
	static vetCampo1 + #13, #0
	static vetCampo1 + #14, #0
	static vetCampo1 + #15, #0
	static vetCampo1 + #16, #0
	static vetCampo1 + #17, #0
	static vetCampo1 + #18, #0
	static vetCampo1 + #19, #0
	static vetCampo1 + #20, #0
	static vetCampo1 + #21, #0
	static vetCampo1 + #22, #0
	static vetCampo1 + #23, #0
	static vetCampo1 + #24, #0
	static vetCampo1 + #25, #0
	static vetCampo1 + #26, #0
	static vetCampo1 + #27, #0
	static vetCampo1 + #28, #0
	static vetCampo1 + #29, #0
	static vetCampo1 + #30, #0
	static vetCampo1 + #31, #0
	static vetCampo1 + #32, #0
	static vetCampo1 + #33, #0
	static vetCampo1 + #34, #0
	static vetCampo1 + #35, #0
	static vetCampo1 + #36, #0
	static vetCampo1 + #37, #0
	static vetCampo1 + #38, #0
	static vetCampo1 + #39, #0
	static vetCampo1 + #40, #0
	static vetCampo1 + #41, #0
	static vetCampo1 + #42, #0
	static vetCampo1 + #43, #0
	static vetCampo1 + #44, #0
	static vetCampo1 + #45, #0
	static vetCampo1 + #46, #0
	static vetCampo1 + #47, #0
	static vetCampo1 + #48, #0
	static vetCampo1 + #49, #0
	static vetCampo1 + #50, #0
	static vetCampo1 + #51, #0
	static vetCampo1 + #52, #0
	static vetCampo1 + #53, #0
	static vetCampo1 + #54, #0
	static vetCampo1 + #55, #0
	static vetCampo1 + #56, #0
	static vetCampo1 + #57, #0
	static vetCampo1 + #58, #0
	static vetCampo1 + #59, #0
	static vetCampo1 + #60, #0
	static vetCampo1 + #61, #0
	static vetCampo1 + #62, #0
	static vetCampo1 + #63, #0
	static vetCampo1 + #64, #0
	static vetCampo1 + #65, #0
	static vetCampo1 + #66, #0
	static vetCampo1 + #67, #0
	static vetCampo1 + #68, #0
	static vetCampo1 + #69, #0
	static vetCampo1 + #70, #0
	static vetCampo1 + #71, #0
	static vetCampo1 + #72, #0
	static vetCampo1 + #73, #0
	static vetCampo1 + #74, #0
	static vetCampo1 + #75, #0
	static vetCampo1 + #76, #0
	static vetCampo1 + #77, #0
	static vetCampo1 + #78, #0
	static vetCampo1 + #79, #0
	static vetCampo1 + #80, #0
	static vetCampo1 + #81, #0
	static vetCampo1 + #82, #0
	static vetCampo1 + #83, #0
	static vetCampo1 + #84, #0
	static vetCampo1 + #85, #0
	static vetCampo1 + #86, #0
	static vetCampo1 + #87, #0
	static vetCampo1 + #88, #0
	static vetCampo1 + #89, #0
	static vetCampo1 + #90, #0
	static vetCampo1 + #91, #0
	static vetCampo1 + #92, #0
	static vetCampo1 + #93, #0
	static vetCampo1 + #94, #0
	static vetCampo1 + #95, #0
	static vetCampo1 + #96, #0
	static vetCampo1 + #97, #0
	static vetCampo1 + #98, #0
	static vetCampo1 + #99, #0
	static vetCampo1 + #100, #0
	static vetCampo1 + #101, #0
	static vetCampo1 + #102, #0
	static vetCampo1 + #103, #0
	static vetCampo1 + #104, #0
	static vetCampo1 + #105, #0
	static vetCampo1 + #106, #0
	static vetCampo1 + #107, #0
	static vetCampo1 + #108, #0
	static vetCampo1 + #109, #0
	static vetCampo1 + #110, #0
	static vetCampo1 + #111, #0
	static vetCampo1 + #112, #0
	static vetCampo1 + #113, #0
	static vetCampo1 + #114, #0
	static vetCampo1 + #115, #0
	static vetCampo1 + #116, #0
	static vetCampo1 + #117, #0
	static vetCampo1 + #118, #0
	static vetCampo1 + #119, #0
	static vetCampo1 + #120, #0
	static vetCampo1 + #121, #0
	static vetCampo1 + #122, #0
	static vetCampo1 + #123, #0
	static vetCampo1 + #124, #0
	static vetCampo1 + #125, #0
	static vetCampo1 + #126, #0
	static vetCampo1 + #127, #0
	static vetCampo1 + #128, #0
	static vetCampo1 + #129, #0
	static vetCampo1 + #130, #0
	static vetCampo1 + #131, #0
	static vetCampo1 + #132, #0
	static vetCampo1 + #133, #0
	static vetCampo1 + #134, #0
	static vetCampo1 + #135, #0
	static vetCampo1 + #136, #0
	static vetCampo1 + #137, #0
	static vetCampo1 + #138, #0
	static vetCampo1 + #139, #0
	static vetCampo1 + #140, #0
	static vetCampo1 + #141, #0
	static vetCampo1 + #142, #0
	static vetCampo1 + #143, #0
	static vetCampo1 + #144, #0
	static vetCampo1 + #145, #0
	static vetCampo1 + #146, #0
	static vetCampo1 + #147, #0
	static vetCampo1 + #148, #0
	static vetCampo1 + #149, #0
	static vetCampo1 + #150, #0
	static vetCampo1 + #151, #0
	static vetCampo1 + #152, #0
	static vetCampo1 + #153, #0
	static vetCampo1 + #154, #0
	static vetCampo1 + #155, #0
	static vetCampo1 + #156, #0
	static vetCampo1 + #157, #0
	static vetCampo1 + #158, #0
	static vetCampo1 + #159, #0
	static vetCampo1 + #160, #0
	static vetCampo1 + #161, #0
	static vetCampo1 + #162, #0
	static vetCampo1 + #163, #0
	static vetCampo1 + #164, #0
	static vetCampo1 + #165, #0
	static vetCampo1 + #166, #0
	static vetCampo1 + #167, #0
	static vetCampo1 + #168, #0
	static vetCampo1 + #169, #0
	static vetCampo1 + #170, #0
	static vetCampo1 + #171, #0
	static vetCampo1 + #172, #0
	static vetCampo1 + #173, #0
	static vetCampo1 + #174, #0
	static vetCampo1 + #175, #0
	static vetCampo1 + #176, #0
	static vetCampo1 + #177, #0
	static vetCampo1 + #178, #0
	static vetCampo1 + #179, #0
	static vetCampo1 + #180, #0
	static vetCampo1 + #181, #0
	static vetCampo1 + #182, #0
	static vetCampo1 + #183, #0
	static vetCampo1 + #184, #0
	static vetCampo1 + #185, #0
	static vetCampo1 + #186, #0
	static vetCampo1 + #187, #0
	static vetCampo1 + #188, #0
	static vetCampo1 + #189, #0
	static vetCampo1 + #190, #0
	static vetCampo1 + #191, #0
	static vetCampo1 + #192, #0
	static vetCampo1 + #193, #0
	static vetCampo1 + #194, #0
	static vetCampo1 + #195, #0

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
; inc r0 -> incrementa 1 no valor que está no registrador r0

; ------- FUNÇÕES DO JOGO -------

main:
	; Printar menu principal
	call clearVet ; Limpar vetor das posições
	;imprime inst0
	loadn r0, #525 ; Posição da tela para printar
	loadn r1, #instruction0
	loadn r2, #3328
	call Imprimestr 
	
	;imprime inst1
	loadn r0, #560 ; Posição da tela para printar
	loadn r1, #instruction1
	loadn r2, #3584 ; Cor rosa
	call Imprimestr 

	init: ;le espaço p/ iniciar
		loadn r1, #2
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

	call ImprimeCampo ; Imprime o campo

	call ImprimeNumBandeiras ; Imprime o número de bandeiras colocadas pelo jogador


	loadn r6, #9 ;r6 guarda 9 para ver se o tabuleiro esta cheio
	loadn r7, #0
	loopStart:
		;verifica se o tabuleiro está cheio
		loadn r5, #full ; loadn coloca o valor do endereco de full em r5
		loadi r5, r5    ; loadi coloca o valor imediato que esta dentro do r5 em r5
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

keyboard: ;retorna a em r3 oq foi lido do teclado
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

Imprimestr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
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
	
	loadn r1, #vetPos ; A partir da primeira posição do vetor
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

ImprimeCampo:

	push r0
	push r1
	push r2
	push r3
	push r4
	
	loadn r0, #0
	loadn r2, #2048s
	loadn r3, #1120
	loadn r4, #40
	ImprimeCampoLoop:
		cmp r0, r3
		jeq ImprimeCampoFim
		loadn r1, #strCampo1
		call Imprimestr
		add r0, r0, r4
		loadn r1, #strCampo2
		call Imprimestr
		add r0, r0, r4
		jmp ImprimeCampoLoop
	ImprimeCampoFim:
		loadn r1, #strCampo1
		call Imprimestr

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts ; Voltar o código para onde estava antes
		

ImprimeNumBandeiras:
	push r0
	push r1
	push r2
	
	;loadi r0, #numBandeiras
	; Começa na posição 154, depois 155, 156
	; r0 = caracter, r1 = cor, r2 = pos

	loadn r0, #'b' ;carrega a bandeira
	loadn r1, #2048 ;carrega cor cinza
	loadn r2, #154 ;carrega a posicao para printar a bandeira
	add r0, r0, r1 ;imprimir a bandeira na cor cinza
	outchar r0, r2

	loadn r0, #':' 
	inc r2
	add r0, r0, r1 ;imprimir o caracter na cor cinza
	outchar r0, r2

	loadn r0, #numBandeiras 
	inc r2
	add r0, r0, r1 ;imprimir o caracter na cor cinza
	outchar r0, r2


	;loadn r1, #154 ; Posição da bandeira
	;loadn r2, #155 ; Posição dos dois pontos
	;loadn r3, #156 ; Posição do número
	;loadn r4, #":"
	
	pop r2
	pop r1
	pop r0
