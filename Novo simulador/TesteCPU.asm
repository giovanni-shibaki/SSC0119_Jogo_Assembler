; Teste das instrucoes que vao sendo implementadas!


; 4 Perguntas ao implemantar as instrucoes:
;	1) O Que preciso fazer para esta instrucao?
;	2) Onde Comeca: Pegargcc simple_simulator.c -O3 -march=native -o simulador -Wall -lm -lcurses o que tem que fazer e ir voltando ate' chegar em um registrador (ie. PC)
;	3) Qual e' a Sequencia de Operacoes: Descrever todos os comandos que tem que dar nos cilos de Dec e Exec
;	4) Ja' terminou??? Cumpriu o que tinha que fazer??? O PC esta' pronto para a proxima instrucao (cuidado com Load, Loadn, Store, Jmp, Call)

	; Teste JNN
	

	; Teste CNN


	; Teste JGZ


	; Teste JGEZ


	; Teste JLZ


	; Teste JLEZ


	; Teste CGZ


	; Teste CGEZ
	

	; Teste CLZ


	; Teste CLEZ


	; Teste JGZ
	loadn r0, #2
	loadn r1, #1
	sub r2, r0, r1
	jgz testejgz
	halt

	testejgz:
		loadn r0, #0		
		loadn r1, #'A'		
		outchar r1, r0	


	; Teste JGEZ

	loadn r0, #2
	loadn r1, #1
	sub r2, r0, r1
	jgez testejgez
	halt

	testejgez:
		loadn r0, #2		
		loadn r1, #'B'		
		outchar r1, r0	



	; Teste JLZ

	loadn r0, #1
	loadn r1, #2
	sub r2, r0, r1
	jlz testejlz
	halt

	testejlz:
		loadn r0, #4		
		loadn r1, #'C'		
		outchar r1, r0	
;
;	; Teste JLEZ
	loadn r0, #1
	loadn r1, #1
	sub r2, r0, r1
	jlez testejlez
	halt

	testejlez:
		loadn r0, #6		
		loadn r1, #'D'		
		outchar r1, r0

	; Teste CGZ
	loadn r0, #2
	loadn r1, #1
	sub r2, r0, r1
	cgz testecgz
		loadn r0, #10	
		loadn r1, #'F'		
		outchar r1, r0

	; Teste CGEZ
	loadn r0, #2
	loadn r1, #1
	sub r2, r0, r1
	cgez testecgez
		loadn r0, #12	
		loadn r1, #'H'		
		outchar r1, r0

	; Teste CLZ
	loadn r0, #1
	loadn r1, #2
	sub r2, r0, r1
	clz testeclz
		loadn r0, #16	
		loadn r1, #'J'		
		outchar r1, r0

	; Teste CLEZ
	loadn r0, #1
	loadn r1, #2
	sub r2, r0, r1
	clez testeclez
		loadn r0, #22	
		loadn r1, #'L'		
		outchar r1, r0
	
	jmp testanotNegative

	testecgz:
		loadn r0, #8		
		loadn r1, #'E'		
		outchar r1, r0
		rts
		halt

	testecgez:
		loadn r0, #14		
		loadn r1, #'G'		
		outchar r1, r0
		rts
		halt
		
	testeclz:
		loadn r0, #18		
		loadn r1, #'I'		
		outchar r1, r0
		rts
		halt

	testeclez:
		loadn r0, #20		
		loadn r1, #'K'		
		outchar r1, r0
		rts
		halt


	testanotNegative:
	; Testa JNN
	loadn r0, #1
	loadn r1, #1
	sub r2, r0, r1
	jnn testejnn
	jmp testanotNegative2

	testejnn:
		loadn r0, #24		
		loadn r1, #'M'		
		outchar r1, r0

	testanotNegative2:

	; Teste CNN
	loadn r0, #1
	loadn r1, #2
	sub r2, r0, r1
	cnn testecnn
		loadn r0, #28	
		loadn r1, #'O'		
		outchar r1, r0
		
	
	halt

	testecnn:
		loadn r0, #26		
		loadn r1, #'N'		
		outchar r1, r0
		rts
		halt




	


	
	
	
	

	
	

	; Teste do Loadn
;	loadn r0, #0		
;	loadn r1, #'A'		
;	outchar r1, r0	
;	
;	; Teste do Load	
;	loadn r0, #2
;	load r1, Dado
;	outchar r1, r0
;	
;	; Teste do Store
;	loadn r1, #'C'
;	store Dado, r1
;	load r2, Dado
;	loadn r0, #4
;	outchar r2, r0
;	
;	; Teste do Storei e Loadi
;	loadn r1, #Dado
;	loadn r0, #'D'
;	storei r1, r0
;	loadi r2, r1
;	loadn r0, #6
;	outchar r2, r0
;	
;	; Teste do Move
;	loadn r1, #'E'
;	mov r2, r1
;	loadn r0, #8
;	outchar r2, r0
;	
;	; Teste do Add
;	loadn r1, #'E'
;	loadn r2, #1
;	add r3, r1, r2
;	loadn r0, #10
;	outchar r3, r0		; Printa F na linha 10
;	
;	; Teste do Sub
;	loadn r1, #'H'
;	loadn r2, #1
;	sub r3, r1, r2
;	loadn r0, #12
;	outchar r3, r0		; Printa G na linha 12
;
;	; Teste do Mult
;	loadn r1, #3
;	loadn r2, #2
;	mul r3, r1, r2
;	loadn r4, #'B'
;	add r3, r4, r3
;	loadn r0, #14
;	outchar r3, r0		; Printa H na linha 14
;
;	; Teste do Div
;	loadn r1, #6
;	loadn r2, #2
;	div r3, r1, r2
;	loadn r4, #'F'
;	add r3, r4, r3
;	loadn r0, #16
;	outchar r3, r0		; Printa I na linha 16
;
;	; Teste do Inc / Dec
;	loadn r0, #18
;	loadn r3, #'K'
;	inc r3
;	dec r3
;	dec r3
;	outchar r3, r0		; Printa J na linha 18
;	
;	; Teste do And
;	loadn r1, #254
;	loadn r2, #5
;	and r3, r1, r2
;	loadn r4, #'G'
;	add r3, r4, r3
;	loadn r0, #20
;	outchar r3, r0		; Printa K na linha 20
;	
;	; Teste do Or
;	loadn r1, #4
;	loadn r2, #3
;	or r3, r1, r2
;	loadn r4, #'E'
;	add r3, r4, r3
;	loadn r0, #22
;	outchar r3, r0		; Printa L na linha 22
;	
;	; Teste do Xor
;	loadn r1, #5
;	loadn r2, #3
;	xor r3, r1, r2
;	loadn r4, #'G'
;	add r3, r4, r3
;	loadn r0, #24
;	outchar r3, r0		; Printa M na linha 24
;	
;	; Teste do CMP e JMP
;	loadn r0, #26
;	loadn r1, #5
;	loadn r2, #3
;	loadn r3, #'O'
;	loadn r4, #'N'
;	cmp r1, r2
;	jgr Maior
;	outchar r3, r0		; Printa O na linha 26
;	jmp SaiJMP
;Maior:
;	outchar r4, r0		; Printa N na linha 26
;	jmp SaiJMP
;	
;SaiJMP:
;
;	; Teste do CALL e RTS
;	loadn r0, #28
;	loadn r1, #5
;	loadn r2, #3
;	loadn r3, #'O'
;	loadn r4, #'X'
;	cmp r1, r2
;	cgr CallMaior
;	cel CallMenorIgual
;	jmp CallSai
;CallMaior:
;	outchar r3, r0		; Printa P na linha 28
;	rts
;CallMenorIgual:
;	outchar r4, r0		; Printa Q na linha 28
;	rts
;1
;CallSai:	
;
; 	; Teste do PUSH e POP
; 	loadn r0, #30
; 	loadn r1, #'P'
; 	push r1
; 	pop r2
; 	outchar r2, r0		; Printa R na linha 30
	
	
	
Fim:	
	halt

	
; Dado : var #1  ; O comando VAR aloca bytes de memoria e associa o primeiro byte ao LABEL
; static Dado + #0, #'B'

	
	
	
	
	
	
	
	
	
