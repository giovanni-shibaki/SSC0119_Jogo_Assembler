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

flag1:  string "         ##               \n"
flag2:  string "        ####              \n"
flag3:  string "         ##               \n"
flag4:  string "         ## ###########   \n"
flag5:  string "         ## ############  \n"
flag6:  string "         ## ############# \n"
flag7:  string "         ## ############# \n"
flag8:  string "         ## ############  \n"
flag9:  string "         ## ##########    \n"
flag10: string "         ##               \n"
flag11: string "         ##               \n"
flag12: string "         ##               \n"
flag13: string "         ##               \n"
flag14: string "   ##############         \n"
flag15: string "  ################        \n"
flag16: string "  ################        \n"

telaPerdeu1:  string "     _.-^^---....,,--_      "
telaPerdeu2:  string " _--                  --_   "
telaPerdeu3:  string "<             		   >) "
telaPerdeu4:  string "|       VOCE PERDEU       | "
telaPerdeu5:  string " \\._                   _./ "
telaPerdeu6:  string "    ```--. . , ; .--'''     "
telaPerdeu7:  string "          | |   |    FIM DO "
telaPerdeu8:  string "       .-=||  | |=-. JOGO ! "
telaPerdeu9:  string "       `-=========-'        "
telaPerdeu10: string "          | ;  :|           "
telaPerdeu11: string " _____.,-~~~~~~~~~~,._____  "


telaGanhou1:  string "    ___________      \n"
telaGanhou2:  string "   '._==_==_=_.'     \n"
telaGanhou3:  string "   .-\\:      /-.    \n"
telaGanhou4:  string "  | (|:. 1º  |) |    \n"
telaGanhou5:  string "   '-|:.     |-'     \n"
telaGanhou6:  string "     \\::.   /       \n"
telaGanhou7:  string "      '::. .' GANHOU \n"
telaGanhou8:  string "        ) (     O    \n"
telaGanhou9:  string "      _.' '._ JOGO!! \n"
telaGanhou10: string "     =========       \n"

strCampo1: string "[[[[[[[[[[[[[[[[[[[[[[[[[[[[["
strCampo2: string "[ [ [ [ [ [ [ [ [ [ [ [ [ [ ["

; caracteres possíveis para o charmap ][{}*&><

telaMenu1:	string "   _____                            "
telaMenu2:	string "  / ____|                           "
telaMenu3:	string " | |     __ _ _ __ ___  _ __   ___  "
telaMenu4:	string " | |    / _` | '_ ` _ \\| '_ \\ / _ \\ "
telaMenu5:	string " | |___| (_| | | | | | | |_) | (_) |"
telaMenu6:	string "  \\_____\\__,_|_| |_| |_| .__/ \\___/ "
telaMenu7:	string " |  \\/  (_)            | || |       "
telaMenu8:	string " | \\  / |_ _ __   __ _ |_|| | ___   "
telaMenu9:	string " | |\\/| | | '_ \\ / _` |/ _` |/ _ \\  "
telaMenu10:	string " | |  | | | | | | (_| | (_| | (_) | "
telaMenu11:	string " |_|  |_|_|_| |_|\\__,_|\\__,_|\\___/  "

instruction0: string "-- Digite o campo que deseja jogar --\n"
instruction1: string "1 - Facil    2 - Medio    3 - Dificil\n"
strWin: string " Ganhou!!"

derrota1: string "Game Over!"
derrota2: string "Pressione qualquer"
derrota3: string "tecla para continuar..."

vitoria1: string "Voce venceu!"
vitoria2: string "Pressione qualquer"
vitoria3: string "tecla para continuar..."

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

; ------- CAMPO MINADO - TODOS OS MAPAS -------

; Vetor que representa o campo minado. Os valores de cada índice representa se tem bomba, se não tem ou se está bom bandeira

vetCampo: var #196
numQuadradosCampo: var #1
;------------------------------------- CAMPO 1 ---------------------------------------

vetCampo1 : var #196
	static vetCampo1 + #0, #9
	static vetCampo1 + #1, #2
	static vetCampo1 + #2, #9
	static vetCampo1 + #3, #1
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
	static vetCampo1 + #14, #1
	static vetCampo1 + #15, #2
	static vetCampo1 + #16, #1
	static vetCampo1 + #17, #1
	static vetCampo1 + #18, #0
	static vetCampo1 + #19, #0
	static vetCampo1 + #20, #0
	static vetCampo1 + #21, #0
	static vetCampo1 + #22, #0
	static vetCampo1 + #23, #0
	static vetCampo1 + #24, #0
	static vetCampo1 + #25, #1
	static vetCampo1 + #26, #1
	static vetCampo1 + #27, #1
	static vetCampo1 + #28, #0
	static vetCampo1 + #29, #0
	static vetCampo1 + #30, #1
	static vetCampo1 + #31, #2
	static vetCampo1 + #32, #2
	static vetCampo1 + #33, #1
	static vetCampo1 + #34, #1
	static vetCampo1 + #35, #1
	static vetCampo1 + #36, #1
	static vetCampo1 + #37, #0
	static vetCampo1 + #38, #1
	static vetCampo1 + #39, #3
	static vetCampo1 + #40, #9
	static vetCampo1 + #41, #2
	static vetCampo1 + #42, #1
	static vetCampo1 + #43, #1
	static vetCampo1 + #44, #2
	static vetCampo1 + #45, #9
	static vetCampo1 + #46, #9
	static vetCampo1 + #47, #1
	static vetCampo1 + #48, #1
	static vetCampo1 + #49, #9
	static vetCampo1 + #50, #1
	static vetCampo1 + #51, #0
	static vetCampo1 + #52, #1
	static vetCampo1 + #53, #9
	static vetCampo1 + #54, #9
	static vetCampo1 + #55, #2
	static vetCampo1 + #56, #1
	static vetCampo1 + #57, #9
	static vetCampo1 + #58, #2
	static vetCampo1 + #59, #2
	static vetCampo1 + #60, #2
	static vetCampo1 + #61, #1
	static vetCampo1 + #62, #1
	static vetCampo1 + #63, #1
	static vetCampo1 + #64, #1
	static vetCampo1 + #65, #0
	static vetCampo1 + #66, #1
	static vetCampo1 + #67, #2
	static vetCampo1 + #68, #2
	static vetCampo1 + #69, #1
	static vetCampo1 + #70, #1
	static vetCampo1 + #71, #1
	static vetCampo1 + #72, #1
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
	static vetCampo1 + #84, #1
	static vetCampo1 + #85, #1
	static vetCampo1 + #86, #1
	static vetCampo1 + #87, #0
	static vetCampo1 + #88, #0
	static vetCampo1 + #89, #0
	static vetCampo1 + #90, #1
	static vetCampo1 + #91, #1
	static vetCampo1 + #92, #1
	static vetCampo1 + #93, #0
	static vetCampo1 + #94, #0
	static vetCampo1 + #95, #0
	static vetCampo1 + #96, #0
	static vetCampo1 + #97, #0
	static vetCampo1 + #98, #2
	static vetCampo1 + #99, #9
	static vetCampo1 + #100, #2
	static vetCampo1 + #101, #0
	static vetCampo1 + #102, #0
	static vetCampo1 + #103, #0
	static vetCampo1 + #104, #1
	static vetCampo1 + #105, #9
	static vetCampo1 + #106, #1
	static vetCampo1 + #107, #0
	static vetCampo1 + #108, #0
	static vetCampo1 + #109, #1
	static vetCampo1 + #110, #1
	static vetCampo1 + #111, #1
	static vetCampo1 + #112, #2
	static vetCampo1 + #113, #9
	static vetCampo1 + #114, #2
	static vetCampo1 + #115, #1
	static vetCampo1 + #116, #1
	static vetCampo1 + #117, #1
	static vetCampo1 + #118, #1
	static vetCampo1 + #119, #1
	static vetCampo1 + #120, #1
	static vetCampo1 + #121, #0
	static vetCampo1 + #122, #0
	static vetCampo1 + #123, #1
	static vetCampo1 + #124, #9
	static vetCampo1 + #125, #1
	static vetCampo1 + #126, #1
	static vetCampo1 + #127, #1
	static vetCampo1 + #128, #1
	static vetCampo1 + #129, #1
	static vetCampo1 + #130, #9
	static vetCampo1 + #131, #1
	static vetCampo1 + #132, #0
	static vetCampo1 + #133, #0
	static vetCampo1 + #134, #0
	static vetCampo1 + #135, #0
	static vetCampo1 + #136, #0
	static vetCampo1 + #137, #1
	static vetCampo1 + #138, #1
	static vetCampo1 + #139, #1
	static vetCampo1 + #140, #0
	static vetCampo1 + #141, #0
	static vetCampo1 + #142, #0
	static vetCampo1 + #143, #1
	static vetCampo1 + #144, #1
	static vetCampo1 + #145, #1
	static vetCampo1 + #146, #0
	static vetCampo1 + #147, #0
	static vetCampo1 + #148, #1
	static vetCampo1 + #149, #1
	static vetCampo1 + #150, #1
	static vetCampo1 + #151, #1
	static vetCampo1 + #152, #1
	static vetCampo1 + #153, #1
	static vetCampo1 + #154, #1
	static vetCampo1 + #155, #1
	static vetCampo1 + #156, #0
	static vetCampo1 + #157, #0
	static vetCampo1 + #158, #0
	static vetCampo1 + #159, #0
	static vetCampo1 + #160, #0
	static vetCampo1 + #161, #0
	static vetCampo1 + #162, #1
	static vetCampo1 + #163, #9
	static vetCampo1 + #164, #1
	static vetCampo1 + #165, #1
	static vetCampo1 + #166, #9
	static vetCampo1 + #167, #1
	static vetCampo1 + #168, #9
	static vetCampo1 + #169, #1
	static vetCampo1 + #170, #0
	static vetCampo1 + #171, #0
	static vetCampo1 + #172, #0
	static vetCampo1 + #173, #1
	static vetCampo1 + #174, #1
	static vetCampo1 + #175, #1
	static vetCampo1 + #176, #1
	static vetCampo1 + #177, #1
	static vetCampo1 + #178, #1
	static vetCampo1 + #179, #1
	static vetCampo1 + #180, #1
	static vetCampo1 + #181, #1
	static vetCampo1 + #182, #1
	static vetCampo1 + #183, #1
	static vetCampo1 + #184, #0
	static vetCampo1 + #185, #0
	static vetCampo1 + #186, #0
	static vetCampo1 + #187, #1
	static vetCampo1 + #188, #9
	static vetCampo1 + #189, #1
	static vetCampo1 + #190, #0
	static vetCampo1 + #191, #0
	static vetCampo1 + #192, #0
	static vetCampo1 + #193, #0
	static vetCampo1 + #194, #0
	static vetCampo1 + #195, #0

;------------------------------------- CAMPO 2 ---------------------------------------

vetCampo2 : var #196
	static vetCampo2 + #0, #9
	static vetCampo2 + #1, #1
	static vetCampo2 + #2, #1
	static vetCampo2 + #3, #1
	static vetCampo2 + #4, #0
	static vetCampo2 + #5, #0
	static vetCampo2 + #6, #1
	static vetCampo2 + #7, #2
	static vetCampo2 + #8, #1
	static vetCampo2 + #9, #1
	static vetCampo2 + #10, #0
	static vetCampo2 + #11, #1
	static vetCampo2 + #12, #9
	static vetCampo2 + #13, #1
	static vetCampo2 + #14, #1
	static vetCampo2 + #15, #2
	static vetCampo2 + #16, #9
	static vetCampo2 + #17, #2
	static vetCampo2 + #18, #1
	static vetCampo2 + #19, #0
	static vetCampo2 + #20, #1
	static vetCampo2 + #21, #9
	static vetCampo2 + #22, #9
	static vetCampo2 + #23, #1
	static vetCampo2 + #24, #1
	static vetCampo2 + #25, #2
	static vetCampo2 + #26, #2
	static vetCampo2 + #27, #1
	static vetCampo2 + #28, #0
	static vetCampo2 + #29, #1
	static vetCampo2 + #30, #3
	static vetCampo2 + #31, #9
	static vetCampo2 + #32, #2
	static vetCampo2 + #33, #0
	static vetCampo2 + #34, #1
	static vetCampo2 + #35, #2
	static vetCampo2 + #36, #2
	static vetCampo2 + #37, #1
	static vetCampo2 + #38, #1
	static vetCampo2 + #39, #9
	static vetCampo2 + #40, #1
	static vetCampo2 + #41, #0
	static vetCampo2 + #42, #0
	static vetCampo2 + #43, #0
	static vetCampo2 + #44, #2
	static vetCampo2 + #45, #9
	static vetCampo2 + #46, #2
	static vetCampo2 + #47, #0
	static vetCampo2 + #48, #0
	static vetCampo2 + #49, #0
	static vetCampo2 + #50, #0
	static vetCampo2 + #51, #0
	static vetCampo2 + #52, #2
	static vetCampo2 + #53, #2
	static vetCampo2 + #54, #2
	static vetCampo2 + #55, #0
	static vetCampo2 + #56, #1
	static vetCampo2 + #57, #2
	static vetCampo2 + #58, #3
	static vetCampo2 + #59, #2
	static vetCampo2 + #60, #1
	static vetCampo2 + #61, #0
	static vetCampo2 + #62, #1
	static vetCampo2 + #63, #1
	static vetCampo2 + #64, #1
	static vetCampo2 + #65, #0
	static vetCampo2 + #66, #1
	static vetCampo2 + #67, #9
	static vetCampo2 + #68, #1
	static vetCampo2 + #69, #0
	static vetCampo2 + #70, #1
	static vetCampo2 + #71, #9
	static vetCampo2 + #72, #9
	static vetCampo2 + #73, #1
	static vetCampo2 + #74, #0
	static vetCampo2 + #75, #0
	static vetCampo2 + #76, #1
	static vetCampo2 + #77, #9
	static vetCampo2 + #78, #1
	static vetCampo2 + #79, #0
	static vetCampo2 + #80, #1
	static vetCampo2 + #81, #1
	static vetCampo2 + #82, #1
	static vetCampo2 + #83, #0
	static vetCampo2 + #84, #1
	static vetCampo2 + #85, #2
	static vetCampo2 + #86, #2
	static vetCampo2 + #87, #2
	static vetCampo2 + #88, #2
	static vetCampo2 + #89, #2
	static vetCampo2 + #90, #1
	static vetCampo2 + #91, #1
	static vetCampo2 + #92, #2
	static vetCampo2 + #93, #1
	static vetCampo2 + #94, #1
	static vetCampo2 + #95, #0
	static vetCampo2 + #96, #0
	static vetCampo2 + #97, #0
	static vetCampo2 + #98, #0
	static vetCampo2 + #99, #1
	static vetCampo2 + #100, #1
	static vetCampo2 + #101, #2
	static vetCampo2 + #102, #9
	static vetCampo2 + #103, #2
	static vetCampo2 + #104, #1
	static vetCampo2 + #105, #0
	static vetCampo2 + #106, #1
	static vetCampo2 + #107, #9
	static vetCampo2 + #108, #2
	static vetCampo2 + #109, #1
	static vetCampo2 + #110, #1
	static vetCampo2 + #111, #0
	static vetCampo2 + #112, #0
	static vetCampo2 + #113, #2
	static vetCampo2 + #114, #9
	static vetCampo2 + #115, #3
	static vetCampo2 + #116, #3
	static vetCampo2 + #117, #9
	static vetCampo2 + #118, #1
	static vetCampo2 + #119, #0
	static vetCampo2 + #120, #1
	static vetCampo2 + #121, #1
	static vetCampo2 + #122, #2
	static vetCampo2 + #123, #9
	static vetCampo2 + #124, #1
	static vetCampo2 + #125, #0
	static vetCampo2 + #126, #0
	static vetCampo2 + #127, #2
	static vetCampo2 + #128, #9
	static vetCampo2 + #129, #2
	static vetCampo2 + #130, #1
	static vetCampo2 + #131, #1
	static vetCampo2 + #132, #2
	static vetCampo2 + #133, #1
	static vetCampo2 + #134, #2
	static vetCampo2 + #135, #1
	static vetCampo2 + #136, #3
	static vetCampo2 + #137, #2
	static vetCampo2 + #138, #2
	static vetCampo2 + #139, #0
	static vetCampo2 + #140, #0
	static vetCampo2 + #141, #1
	static vetCampo2 + #142, #1
	static vetCampo2 + #143, #1
	static vetCampo2 + #144, #0
	static vetCampo2 + #145, #0
	static vetCampo2 + #146, #1
	static vetCampo2 + #147, #9
	static vetCampo2 + #148, #2
	static vetCampo2 + #149, #9
	static vetCampo2 + #150, #2
	static vetCampo2 + #151, #9
	static vetCampo2 + #152, #1
	static vetCampo2 + #153, #0
	static vetCampo2 + #154, #0
	static vetCampo2 + #155, #1
	static vetCampo2 + #156, #1
	static vetCampo2 + #157, #2
	static vetCampo2 + #158, #1
	static vetCampo2 + #159, #1
	static vetCampo2 + #160, #1
	static vetCampo2 + #161, #1
	static vetCampo2 + #162, #2
	static vetCampo2 + #163, #1
	static vetCampo2 + #164, #3
	static vetCampo2 + #165, #2
	static vetCampo2 + #166, #2
	static vetCampo2 + #167, #0
	static vetCampo2 + #168, #0
	static vetCampo2 + #169, #1
	static vetCampo2 + #170, #9
	static vetCampo2 + #171, #2
	static vetCampo2 + #172, #9
	static vetCampo2 + #173, #1
	static vetCampo2 + #174, #0
	static vetCampo2 + #175, #1
	static vetCampo2 + #176, #2
	static vetCampo2 + #177, #2
	static vetCampo2 + #178, #2
	static vetCampo2 + #179, #9
	static vetCampo2 + #180, #1
	static vetCampo2 + #181, #0
	static vetCampo2 + #182, #0
	static vetCampo2 + #183, #1
	static vetCampo2 + #184, #1
	static vetCampo2 + #185, #2
	static vetCampo2 + #186, #1
	static vetCampo2 + #187, #1
	static vetCampo2 + #188, #0
	static vetCampo2 + #189, #1
	static vetCampo2 + #190, #9
	static vetCampo2 + #191, #9
	static vetCampo2 + #192, #2
	static vetCampo2 + #193, #1
	static vetCampo2 + #194, #1
	static vetCampo2 + #195, #0

;------------------------------------- CAMPO 3 ---------------------------------------

vetCampo3 : var #196
	static vetCampo3 + #0, #1
	static vetCampo3 + #1, #1
	static vetCampo3 + #2, #2
	static vetCampo3 + #3, #1
	static vetCampo3 + #4, #1
	static vetCampo3 + #5, #1
	static vetCampo3 + #6, #1
	static vetCampo3 + #7, #1
	static vetCampo3 + #8, #0
	static vetCampo3 + #9, #0
	static vetCampo3 + #10, #1
	static vetCampo3 + #11, #1
	static vetCampo3 + #12, #1
	static vetCampo3 + #13, #0
	static vetCampo3 + #14, #1
	static vetCampo3 + #15, #9
	static vetCampo3 + #16, #3
	static vetCampo3 + #17, #9
	static vetCampo3 + #18, #3
	static vetCampo3 + #19, #1
	static vetCampo3 + #20, #9
	static vetCampo3 + #21, #2
	static vetCampo3 + #22, #1
	static vetCampo3 + #23, #1
	static vetCampo3 + #24, #1
	static vetCampo3 + #25, #9
	static vetCampo3 + #26, #1
	static vetCampo3 + #27, #0
	static vetCampo3 + #28, #2
	static vetCampo3 + #29, #3
	static vetCampo3 + #30, #9
	static vetCampo3 + #31, #3
	static vetCampo3 + #32, #2
	static vetCampo3 + #33, #1
	static vetCampo3 + #34, #2
	static vetCampo3 + #35, #3
	static vetCampo3 + #36, #9
	static vetCampo3 + #37, #2
	static vetCampo3 + #38, #2
	static vetCampo3 + #39, #2
	static vetCampo3 + #40, #1
	static vetCampo3 + #41, #0
	static vetCampo3 + #42, #1
	static vetCampo3 + #43, #9
	static vetCampo3 + #44, #3
	static vetCampo3 + #45, #9
	static vetCampo3 + #46, #1
	static vetCampo3 + #47, #0
	static vetCampo3 + #48, #1
	static vetCampo3 + #49, #9
	static vetCampo3 + #50, #2
	static vetCampo3 + #51, #2
	static vetCampo3 + #52, #9
	static vetCampo3 + #53, #1
	static vetCampo3 + #54, #0
	static vetCampo3 + #55, #0
	static vetCampo3 + #56, #2
	static vetCampo3 + #57, #2
	static vetCampo3 + #58, #3
	static vetCampo3 + #59, #1
	static vetCampo3 + #60, #2
	static vetCampo3 + #61, #1
	static vetCampo3 + #62, #3
	static vetCampo3 + #63, #2
	static vetCampo3 + #64, #2
	static vetCampo3 + #65, #1
	static vetCampo3 + #66, #2
	static vetCampo3 + #67, #3
	static vetCampo3 + #68, #2
	static vetCampo3 + #69, #1
	static vetCampo3 + #70, #1
	static vetCampo3 + #71, #9
	static vetCampo3 + #72, #1
	static vetCampo3 + #73, #0
	static vetCampo3 + #74, #1
	static vetCampo3 + #75, #9
	static vetCampo3 + #76, #3
	static vetCampo3 + #77, #9
	static vetCampo3 + #78, #2
	static vetCampo3 + #79, #1
	static vetCampo3 + #80, #3
	static vetCampo3 + #81, #9
	static vetCampo3 + #82, #9
	static vetCampo3 + #83, #2
	static vetCampo3 + #84, #1
	static vetCampo3 + #85, #2
	static vetCampo3 + #86, #2
	static vetCampo3 + #87, #1
	static vetCampo3 + #88, #2
	static vetCampo3 + #89, #3
	static vetCampo3 + #90, #9
	static vetCampo3 + #91, #3
	static vetCampo3 + #92, #3
	static vetCampo3 + #93, #9
	static vetCampo3 + #94, #3
	static vetCampo3 + #95, #9
	static vetCampo3 + #96, #9
	static vetCampo3 + #97, #2
	static vetCampo3 + #98, #0
	static vetCampo3 + #99, #1
	static vetCampo3 + #100, #9
	static vetCampo3 + #101, #1
	static vetCampo3 + #102, #1
	static vetCampo3 + #103, #9
	static vetCampo3 + #104, #3
	static vetCampo3 + #105, #9
	static vetCampo3 + #106, #3
	static vetCampo3 + #107, #2
	static vetCampo3 + #108, #3
	static vetCampo3 + #109, #3
	static vetCampo3 + #110, #3
	static vetCampo3 + #111, #2
	static vetCampo3 + #112, #0
	static vetCampo3 + #113, #1
	static vetCampo3 + #114, #2
	static vetCampo3 + #115, #2
	static vetCampo3 + #116, #2
	static vetCampo3 + #117, #1
	static vetCampo3 + #118, #2
	static vetCampo3 + #119, #1
	static vetCampo3 + #120, #2
	static vetCampo3 + #121, #9
	static vetCampo3 + #122, #1
	static vetCampo3 + #123, #1
	static vetCampo3 + #124, #9
	static vetCampo3 + #125, #1
	static vetCampo3 + #126, #1
	static vetCampo3 + #127, #1
	static vetCampo3 + #128, #2
	static vetCampo3 + #129, #9
	static vetCampo3 + #130, #2
	static vetCampo3 + #131, #1
	static vetCampo3 + #132, #1
	static vetCampo3 + #133, #1
	static vetCampo3 + #134, #2
	static vetCampo3 + #135, #3
	static vetCampo3 + #136, #2
	static vetCampo3 + #137, #2
	static vetCampo3 + #138, #1
	static vetCampo3 + #139, #1
	static vetCampo3 + #140, #2
	static vetCampo3 + #141, #9
	static vetCampo3 + #142, #3
	static vetCampo3 + #143, #1
	static vetCampo3 + #144, #2
	static vetCampo3 + #145, #9
	static vetCampo3 + #146, #1
	static vetCampo3 + #147, #1
	static vetCampo3 + #148, #9
	static vetCampo3 + #149, #3
	static vetCampo3 + #150, #9
	static vetCampo3 + #151, #1
	static vetCampo3 + #152, #0
	static vetCampo3 + #153, #0
	static vetCampo3 + #154, #2
	static vetCampo3 + #155, #9
	static vetCampo3 + #156, #3
	static vetCampo3 + #157, #2
	static vetCampo3 + #158, #2
	static vetCampo3 + #159, #2
	static vetCampo3 + #160, #1
	static vetCampo3 + #161, #2
	static vetCampo3 + #162, #3
	static vetCampo3 + #163, #9
	static vetCampo3 + #164, #3
	static vetCampo3 + #165, #2
	static vetCampo3 + #166, #1
	static vetCampo3 + #167, #1
	static vetCampo3 + #168, #1
	static vetCampo3 + #169, #2
	static vetCampo3 + #170, #9
	static vetCampo3 + #171, #2
	static vetCampo3 + #172, #9
	static vetCampo3 + #173, #1
	static vetCampo3 + #174, #0
	static vetCampo3 + #175, #1
	static vetCampo3 + #176, #9
	static vetCampo3 + #177, #3
	static vetCampo3 + #178, #9
	static vetCampo3 + #179, #1
	static vetCampo3 + #180, #1
	static vetCampo3 + #181, #9
	static vetCampo3 + #182, #0
	static vetCampo3 + #183, #1
	static vetCampo3 + #184, #1
	static vetCampo3 + #185, #2
	static vetCampo3 + #186, #1
	static vetCampo3 + #187, #1
	static vetCampo3 + #188, #0
	static vetCampo3 + #189, #1
	static vetCampo3 + #190, #1
	static vetCampo3 + #191, #2
	static vetCampo3 + #192, #1
	static vetCampo3 + #193, #1
	static vetCampo3 + #194, #1
	static vetCampo3 + #195, #1

; guarda a posição do primeiro pixel de cada slot do campo minado
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
		;imprime inst0
		call clrScrn
		call printaMenu

		init: ; Ler a dificuldade escolhida pelo player
			call keyboard
			loadn r0, #'1'
			cmp r3, r0
			ceq loadCampo1
			ceq startGame
			
			loadn r0, #'2'
			cmp r3, r0
			ceq loadCampo2
			ceq startGame

			loadn r0, #'3'
			cmp r3, r0
			ceq loadCampo3
			ceq startGame

			jne init
		
		call startGame

;-------------------------------------startGame------------------------------------------
startGame:
	; empilhando registradores para preservar seus valores ao longo do programa
	push r3
	push r4
	push r5
	push r6
	push r7
	
	call clrScrn ;limpa a tela

	call ImprimeCampo ; Imprime o campo


	; Inicializando variáveis
	loadn r3, #0

	loadn r5, #numBandeiras
	storei r5, r3
	
	loadn r5, #posPonteiro
	storei r5, r3
	
	loadn r5, #numQuadradosRemovidos
	storei r5, r3

	call ImprimeNumBandeiras ; Imprime o número de bandeiras colocadas pelo jogador

	; Printar o ponteiro na posição 0
	loadn r0, #3072
	call pintaEmVolta
	
	loopStart:
		
		; Recebe a tecla digitada pelo usuário
		call keyboard
		

		; Em r3 está a tecla digitada
		mov r0, r3
		call realizaAcao
		
		jmp loopStart
		
	endGame:
		
		call keyboard
		pop r7
		pop r6
		pop r5
		pop r4
		pop r3
		rts

; -----------------------------------------------------------------------------
; Printa na tela o valor armazenado na variavel posCampo
printDebug:
	push r1
	push r5
	push r6
	push r7
	
	loadn r1, #posPonteiro
	loadi r6, r1 ; Pega a posição guardada em posPonteiro
	loadn r5, #2352
	add r6, r6, r5
	loadn r7, #39
	
	outchar r6, r7
	
	pop r7
	pop r6
	pop r5
	pop r1
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
	
;clearVet:
;	push r1
;	push r2
;	push r3
;	push r4
;	push r5
;	
;	loadn r5, #0 ;igualado
;	
;	store full, r5
;	store savePos, r5
;	
;	loadn r1, #vetPos ; A partir da primeira posição do vetor
;	loadn r2, #1 ;somando
;	loadn r3, #9 ;k
;	loadn r4, #0 ;contador
;	loadn r5, #2 ;igualado
;			
;	loopClear:
;		add r1, r1, r2 ;pos++
;		storei r1, r5
;		
;		add r4, r4, r2 ;i++
;		cmp r4, r3
;		jne loopClear
;		
;	pop r5
;	pop r4
;	pop r3
;	pop r2
;	pop r1
;	rts

; Imprime as paredes do campo
ImprimeCampo:

	push r0
	push r1
	push r2
	push r3
	push r4
	
	loadn r0, #0
	loadn r2, #2048
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
	push r3
	push r4
	
	; Começa na posição 152, depois 153, 154, 155, 156
	; r0 = caracter, r1 = cor, r2 = pos

	loadn r0, #'{' ;carrega a bandeira
	loadn r1, #2304 ;carrega cor vermelho
	loadn r2, #152 ;carrega a posicao para printar a bandeira
	add r0, r0, r1 ;imprimir a bandeira na cor cinza
	outchar r0, r2

	loadn r1, #2048 ;carrega cor cinza
	loadn r0, #':' 
	inc r2
	add r0, r0, r1 ;imprimir o caracter na cor cinza
	outchar r0, r2

	loadn r1, #2096 ;carrega cor cinza com caracter zero ascii
	loadn r0, #numBandeiras
	loadi r0, r0
	loadn r3, #100
	div r4, r0, r3
	inc r2
	add r4, r4, r1 ;imprimir o caracter na cor cinza
	outchar r4, r2

	mod r4, r0, r3
	loadn r3, #10
	div r4, r4, r3
	inc r2
	add r4, r4, r1 ;imprimir o caracter na cor cinza
	outchar r4, r2

	mod r4, r0, r3
	inc r2
	add r4, r4, r1 ;imprimir o caracter na cor cinza
	outchar r4, r2

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

; -----------------------------------------------------------------------------

loadCampo1:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r0, #vetCampo1
	loadn r1, #vetCampo
	loadn r2, #0
	loadn r3, #196
	loopLoadCampo1:
		loadi r4, r0
		storei r1, r4
		inc r0
		inc r1
		inc r2
		cmp r2, r3
		jne loopLoadCampo1
	
	loadn r0, #numQuadradosCampo
	loadn r1, #178 ;quantidade de quadrados do campo1
	storei r0, r1 ;armazena a quantidade de quadrados na variavel numQuadradosCampo
	
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

; -----------------------------------------------------------------------------


; -----------------------------------------------------------------------------

loadCampo2:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r0, #vetCampo2
	loadn r1, #vetCampo
	loadn r2, #0
	loadn r3, #196
	loopLoadCampo2:
		loadi r4, r0
		storei r1, r4
		inc r0
		inc r1
		inc r2
		cmp r2, r3
		jne loopLoadCampo2
	
	loadn r0, #numQuadradosCampo
	loadn r1, #170 ;quantidade de quadrados do campo2
	storei r0, r1 ;armazena a quantidade de quadrados na variavel numQuadradosCampo

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

; -----------------------------------------------------------------------------


; -----------------------------------------------------------------------------

loadCampo3:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r0, #vetCampo3
	loadn r1, #vetCampo
	loadn r2, #0
	loadn r3, #196
	loopLoadCampo3:
		loadi r4, r0
		storei r1, r4
		inc r0
		inc r1
		inc r2
		cmp r2, r3
		jne loopLoadCampo3
	
	loadn r0, #numQuadradosCampo
	loadn r1, #161 ;quantidade de quadrados do campo3
	storei r0, r1 ;armazena a quantidade de quadrados na variavel numQuadradosCampo

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------

; Printa os valores dentro do vetCampo (Debug)
printVetCampo:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r0, #vetCampo
	loadn r1, #0
	loadn r2, #196
	loadn r4, #2096
	loopPrintVetCampo:
		loadi r3, r0
		add r3, r3, r4  ; colocando a cor no char
		outchar r3, r1
		inc r0
		inc r1
		cmp r1, r2
		jne loopPrintVetCampo

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------

;loadn r0, #0 ; posicao
;	loadn r2, #2048 ; cor
;	loadn r3, #1120 ; limite
;	loadn r4, #40 ; incremento
;	; r1 conteudo
;	ImprimeCampoLoop:
;		cmp r0, r3
;		jeq ImprimeCampoFim
;		loadn r1, #strCampo1
;		call Imprimestr
;		add r0, r0, r4
;		loadn r1, #strCampo2
;		call Imprimestr
;		add r0, r0, r4
;		jmp ImprimeCampoLoop
;	ImprimeCampoFim:
;		loadn r1, #strCampo1
;		call Imprimestr

; -----------------------------------------------------------------------------

; MULT RX, RY, RZ  ; RX < RY * RZ
; DIV RX, RY, RZ   ; RX < RY / RZ
; ADD RX, RY, RZ   ; RX < RY + RZ
; MOD RX, RY, RZ   ; RX < RY % RZ

;arg: r0 = pos; return: r1 = pixel
getPixelFromPos: 
	push r2
	push r3
	push r7

	;pixel = ((posCampo / 14))*80 + ((posCampo % 14) * 2) + 41
	loadn r7, #14
	div r2, r0, r7
	loadn r7, #80
	mul r2, r2, r7

	loadn r7, #14
	mod r3, r0, r7
	loadn r7, #2
	mul r3, r3, r7
	loadn r7, #41
	add r3, r3, r7

	add r1, r2, r3

	pop r7
	pop r3
	pop r2
	rts

; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------

; arg: r0 = botao
realizaAcao:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	
	
	
	loadn r1, #posPonteiro
	loadi r1, r1
	; Verificar qual foi a letra inserida [W, A, S, D, K, L]
	loadn r2, #'w'
	cmp r2, r0
	jeq movePonteiroCima

	loadn r2, #'a'
	cmp r2, r0
	jeq movePonteiroEsquerda

	loadn r2, #'s'
	cmp r2, r0
	jeq movePonteiroBaixo

	loadn r2, #'d'
	cmp r2, r0
	jeq movePonteiroDireita

	loadn r2, #'k'
	cmp r2, r0
	ceq revelaQuadrado

	loadn r2, #'l'
	cmp r2, r0
	jeq cliqueDireito

sairRealizaAcao:
	loadn r0, #3072
	call pintaEmVolta
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
movePonteiroCima:
	loadn r2, #0
	loadn r3, #14
	sub r4, r1, r3
	cmp r4, r2
	jle sairRealizaAcao

	loadn r0, #2048
	call pintaEmVolta

	sub r1, r1, r3 ; Subtrai 14
	loadn r5, #posPonteiro
	storei r5, r1

	loadn r0, #3072
	call pintaEmVolta

	jmp sairRealizaAcao


movePonteiroEsquerda:
	loadn r2, #0
	loadn r3, #1
	sub r4, r1, r3
	cmp r4, r2
	jle sairRealizaAcao

	loadn r0, #2048
	call pintaEmVolta

	sub r1, r1, r3 ; Subtrai 1
	loadn r5, #posPonteiro
	storei r5, r1

	loadn r0, #3072
	call pintaEmVolta

	jmp sairRealizaAcao

movePonteiroBaixo:
	loadn r2, #196
	loadn r3, #14

	add r4, r1, r3
	cmp r4, r2
	jeg sairRealizaAcao

	loadn r0, #2048
	call pintaEmVolta

	add r1, r1, r3 ; Soma 14
	loadn r5, #posPonteiro
	storei r5, r1

	loadn r0, #3072
	call pintaEmVolta

	jmp sairRealizaAcao

movePonteiroDireita:
	loadn r2, #196
	loadn r3, #1
	add r4, r1, r3
	cmp r4, r2
	jeg sairRealizaAcao

	loadn r0, #2048
	call pintaEmVolta


	add r1, r1, r3 ; Soma 1
	loadn r5, #posPonteiro
	storei r5, r1

	loadn r0, #3072
	call pintaEmVolta

	jmp sairRealizaAcao
	
; Revela região
revelaQuadrado:

	loadn r2, #vetCampo
	add r2, r2, r1
	loadi r2, r2
	
	; Verifica se já não foi revelado
	loadn r3, #20
	cmp r2, r3
	jeq sairRevelaQuadrado

	; Verifica se não tem bandeira
	loadn r3, #9
	cmp r2, r3
	jgr sairRevelaQuadrado

	; Ver se era bomba, se for chama a tela de game over e encerra o programa
	loadn r6, #9
	cmp r2, r6
	jne printaValorCampo

	; Se não pulou, então deve printar a bomba e a tela de game over
	mov r0, r1 ; Colocando em r0 a posicao do ponteiro
	call getPixelFromPos
	loadn r4, #'}'
	
	loadn r5, #2816 ; carrega cor amarela
	add r4, r4, r5
	outchar r4, r1 ; Printou a bomba

	; Printar o game-over na tela
	jmp gameOver

	sairRevelaQuadrado:
		rts

	printaValorCampo:
		; Printar valor no vetCampo[posPonteiro]
		; E depois setar o valor dele como 20
		mov r0, r1 ; Colocando em r0 a posicao do ponteiro
		push r1
		call getPixelFromPos ; Vai colocar em r1 o pixel para printar
		loadn r4, #2096
		
		add r4, r2, r4
		outchar r4, r1

		loadn r5, #vetCampo
		pop r1 ; Recupera o r1
		

		
		add r5, r5, r1

		loadi r6, r5 ; guarda o valor inicial no vetcampo para o revelaCampo0
		loadn r4, #20
		storei r5, r4 ; Guarda em vetCampo[posPonteiro] o valor 20

		; verifica se o jogo terminou (todos os slots foram revelados)
		loadn r4, #numQuadradosCampo
		loadi r4, r4
		loadn r5, #1
		sub r4, r4, r5
		loadn r5, #numQuadradosCampo
		storei r5, r4
		loadn r5, #0
		cmp r4, r5
		jeq victory


		; Verificar a condição para a chamada recursiva da função revelaQuadrado0
		loadn r4, #0
		cmp r6, r4
		ceq revelaQuadrado0

		jmp sairRevelaQuadrado

; funcao recursiva que revela todos os quadrados 0 ao redor do quadrado escolhido pelo usuario (ao clicar mouseLeft)
revelaQuadrado0:
	; NAO SOBRESCREVER O r1, pois ele contém a posição do campo
	
	;loadn r2, #20
	;loadn r5, #2849
	;add r5, r5, r1
	;outchar r5, r2

	loadn r0, #2048
	call pintaEmVolta
	
	revelaQuadrado0Cima:
		; se pos - 14 >= 0
		loadn r2, #14
		loadn r3, #0
		sub r4, r1, r2
		cmp r4, r3
		cgr revelaQuadradoRec

	revelaQuadrado0Esquerda:
		; se pos - 1 > 0 E (pos % 14 != 0)
		loadn r2, #14
		loadn r3, #0
		mod r2, r1, r2
		cmp r2, r3
		jeq revelaQuadrado0Direita
		
		loadn r2, #1
		sub r4, r1, r2
		cmp r4, r3
		cgr revelaQuadradoRec

		; Esquerda superior
		loadn r2, #15
		loadn r3, #0
		sub r4, r1, r2
		cmp r4, r3
		cgr revelaQuadradoRec
		
		; Esquerda inferior
		loadn r2, #13
		loadn r3, #196
		add r4, r1, r2
		cmp r4, r3
		cle revelaQuadradoRec
	
	revelaQuadrado0Direita:
		; se pos + 1 < 196 E (pos % 14 != 13)
		loadn r2, #14
		loadn r3, #13
		mod r2, r1, r2
		cmp r2, r3
		jeq revelaQuadrado0Baixo

		loadn r2, #1
		loadn r3, #196
		add r4, r1, r2
		cmp r4, r3
		cle revelaQuadradoRec
		
		; Direita superior
		loadn r2, #13
		loadn r3, #0
		sub r4, r1, r2
		cmp r4, r3
		cgr revelaQuadradoRec
		
		; Direita inferior
		loadn r2, #15
		loadn r3, #196
		add r4, r1, r2
		cmp r4, r3
		cle revelaQuadradoRec

	revelaQuadrado0Baixo:
		; pos + 14 < 196
		loadn r2, #14
		loadn r3, #196
		add r4, r1, r2
		cmp r4, r3
		cle revelaQuadradoRec

	jmp sairRevelaQuadradoRec

	; chamada recursiva da funcao de relevar quadrado
	; O valor da nova posicao sempre estará no r4
	revelaQuadradoRec:
		loadn r2, #20
		loadn r3, #vetCampo
		add r3, r3, r4
		loadi r3, r3
		cmp r3, r2
		; Se vetCampo[r4] == 20 (foi revelado)
		jeq sairRevelaQuadradoRec

		loadn r3, #posPonteiro
		
		push r1
		storei r3, r4
		mov r1, r4
		
		call revelaQuadrado
		pop r1

		loadn r3, #posPonteiro
		storei r3, r1

	sairRevelaQuadradoRec:
		rts

; coloca ou tira a bandeira (toggle flag)
cliqueDireito:
	; Coloca o valor de vetCampo em r2
	loadn r2, #vetCampo
	add r2, r2, r1
	loadi r2, r2

	; Verificar se ja nao foi revelado
	loadn r3, #20
	cmp r2, r3
	jeq sairRealizaAcao

	; Verificar se ja tem bandeira
	loadn r3, #10
	cmp r2, r3
	jle colocaBandeira
	
	tiraBandeira:
		mov r0, r1 ; Colocando em r0 a posicao do ponteiro
		push r1
		call getPixelFromPos ; Vai colocar em r1 o pixel para printar
		loadn r4, #0 ; Printa nada
		
		outchar r4, r1

		loadn r5, #vetCampo
		pop r1 ; Recupera o r1
		add r5, r5, r1

		loadn r4, #10
		sub r2, r2, r4
		storei r5, r2 ; Guarda em vetCampo[posPonteiro] o valor sem a bandeira
		
		loadn r4, #numBandeiras
		loadi r5, r4
		dec r5
		storei r4, r5
		call ImprimeNumBandeiras
		jmp sairRealizaAcao

	colocaBandeira:
		mov r0, r1 ; Colocando em r0 a posicao do ponteiro
		push r1
		call getPixelFromPos ; Vai colocar em r1 o pixel para printar
		loadn r4, #'{' ; Printa a bandeira, com a cor vermelha
		
		loadn r5, #2304
		add r4, r4, r5
		outchar r4, r1

		loadn r5, #vetCampo
		pop r1 ; Recupera o r1
		add r5, r5, r1

		loadn r4, #10
		add r2, r2, r4
		storei r5, r2 ; Guarda em vetCampo[posPonteiro] o valor sem a bandeira

		loadn r4, #numBandeiras
		loadi r5, r4
		inc r5
		storei r4, r5
		call ImprimeNumBandeiras
		jmp sairRealizaAcao
; -----------------------------------------------------------------------------

; args: r0 = cor
pintaEmVolta:
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6

	mov r2, r0

	loadn r3, #posPonteiro
	loadi r4, r3 ; Pega a posição guardada em posPonteiro
	mov r0, r4

	call getPixelFromPos

	; Em r1 estará o pixel
	
	loadn r0, #'['
	add r0, r0, r2
	loadn r3, #40
	loadn r4, #1

	;pixelCima = pixel - 40
	sub r5, r1, r3
	outchar r0, r5

	;pixelSupDir = pixelCima + 1
	add r6, r5, r4
	outchar r0, r6
	
	;pixelSupEsq = pixelCima - 1
	sub r6, r5, r4
	outchar r0, r6
	
	;pixelEmbaixo = pixel + 40
	add r5, r1, r3
	outchar r0, r5

	;pixelInfDir = pixelBaixo + 1
	add r6, r5, r4
	outchar r0, r6

	;pixelInfEsq = pixelBaixo - 1
	sub r6, r5, r4
	outchar r0, r6

	;pixelEsquerdo = pixel - 1
	sub r5, r1, r4
	outchar r0, r5
	
	;pixelDireito = pixel + 1
	add r5, r1, r4
	outchar r0, r5
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	rts

; -----------------------------------------------------------------------------

; Printa na tela a mensagem de gamer over e depois a imagem
gameOver:
	loadn r0, #334 ; Posição da tela para printar
	loadn r1, #derrota1
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #370 ; Posição da tela para printar
	loadn r1, #derrota2
	loadn r2, #2816
	call Imprimestr

	loadn r0, #408 ; Posição da tela para printar
	loadn r1, #derrota3
	loadn r2, #2816
	call Imprimestr
	; Esperar o usuário apertar qualquer tecla
	call keyboard

	; Agora, limpar a tela e printar a imagem final
	call clrScrn

	loadn r0, #325 ; Posição da tela para printar
	loadn r1, #telaPerdeu1
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #365 ; Posição da tela para printar
	loadn r1, #telaPerdeu2
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #405 ; Posição da tela para printar
	loadn r1, #telaPerdeu3
	loadn r2, #2816
	call Imprimestr

	loadn r0, #445 ; Posição da tela para printar
	loadn r1, #telaPerdeu4
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #485 ; Posição da tela para printar
	loadn r1, #telaPerdeu5
	loadn r2, #2816
	call Imprimestr

	loadn r0, #525 ; Posição da tela para printar
	loadn r1, #telaPerdeu6
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #565 ; Posição da tela para printar
	loadn r1, #telaPerdeu7
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #605 ; Posição da tela para printar
	loadn r1, #telaPerdeu8
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #645 ; Posição da tela para printar
	loadn r1, #telaPerdeu9
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #685 ; Posição da tela para printar
	loadn r1, #telaPerdeu10
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #725 ; Posição da tela para printar
	loadn r1, #telaPerdeu11
	loadn r2, #2816
	call Imprimestr 

	jmp end



; -----------------------------------------------------------------------------

victory:
	loadn r0, #334 ; Posição da tela para printar
	loadn r1, #vitoria1
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #370 ; Posição da tela para printar
	loadn r1, #vitoria2
	loadn r2, #2816
	call Imprimestr

	loadn r0, #408 ; Posição da tela para printar
	loadn r1, #vitoria2
	loadn r2, #2816
	call Imprimestr

	; Esperar o usuário apertar qualquer tecla
	call keyboard

	; Agora, limpar a tela e printar a imagem final
	call clrScrn

	loadn r0, #325 ; Posição da tela para printar
	loadn r1, #telaGanhou1
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #365 ; Posição da tela para printar
	loadn r1, #telaGanhou2
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #405 ; Posição da tela para printar
	loadn r1, #telaGanhou3
	loadn r2, #2816
	call Imprimestr

	loadn r0, #445 ; Posição da tela para printar
	loadn r1, #telaGanhou4
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #485 ; Posição da tela para printar
	loadn r1, #telaGanhou5
	loadn r2, #2816
	call Imprimestr

	loadn r0, #525 ; Posição da tela para printar
	loadn r1, #telaGanhou6
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #565 ; Posição da tela para printar
	loadn r1, #telaGanhou7
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #605 ; Posição da tela para printar
	loadn r1, #telaGanhou8
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #645 ; Posição da tela para printar
	loadn r1, #telaGanhou9
	loadn r2, #2816
	call Imprimestr 

	loadn r0, #685 ; Posição da tela para printar
	loadn r1, #telaGanhou10
	loadn r2, #2816
	call Imprimestr 

	jmp end

; -----------------------------------------------------------------------------

printaMenu:
	push r0
	push r1
	push r2

	loadn r0, #2 ; Posição da tela para printar
	loadn r1, #telaMenu1
	loadn r2, #2816
	call Imprimestr

	loadn r0, #42 ; Posição da tela para printar
	loadn r1, #telaMenu2
	loadn r2, #2816
	call Imprimestr

	loadn r0, #82 ; Posição da tela para printar
	loadn r1, #telaMenu3
	loadn r2, #2816
	call Imprimestr

	loadn r0, #122 ; Posição da tela para printar
	loadn r1, #telaMenu4
	loadn r2, #2816
	call Imprimestr

	loadn r0, #162 ; Posição da tela para printar
	loadn r1, #telaMenu5
	loadn r2, #2816
	call Imprimestr

	loadn r0, #202 ; Posição da tela para printar
	loadn r1, #telaMenu6
	loadn r2, #2816
	call Imprimestr

	loadn r0, #242 ; Posição da tela para printar
	loadn r1, #telaMenu7
	loadn r2, #2816
	call Imprimestr

	loadn r0, #282 ; Posição da tela para printar
	loadn r1, #telaMenu8
	loadn r2, #2816
	call Imprimestr

	loadn r0, #322 ; Posição da tela para printar
	loadn r1, #telaMenu9
	loadn r2, #2816
	call Imprimestr

	loadn r0, #362 ; Posição da tela para printar
	loadn r1, #telaMenu10
	loadn r2, #2816
	call Imprimestr

	loadn r0, #402 ; Posição da tela para printar
	loadn r1, #telaMenu11
	loadn r2, #2816
	call Imprimestr

	; Printar agora a bomba
	loadn r0, #567 ; Posição da tela para printar
	loadn r1, #flag1
	loadn r2, #2304
	call Imprimestr

	loadn r0, #607 ; Posição da tela para printar
	loadn r1, #flag2
	loadn r2, #2304
	call Imprimestr

	loadn r0, #647 ; Posição da tela para printar
	loadn r1, #flag3
	loadn r2, #2304
	call Imprimestr

	loadn r0, #687 ; Posição da tela para printar
	loadn r1, #flag4
	loadn r2, #2304
	call Imprimestr

	loadn r0, #727 ; Posição da tela para printar
	loadn r1, #flag5
	loadn r2, #2304
	call Imprimestr

	loadn r0, #767 ; Posição da tela para printar
	loadn r1, #flag6
	loadn r2, #2304
	call Imprimestr

	loadn r0, #807 ; Posição da tela para printar
	loadn r1, #flag7
	loadn r2, #2304
	call Imprimestr

	loadn r0, #847 ; Posição da tela para printar
	loadn r1, #flag8
	loadn r2, #2304
	call Imprimestr

	loadn r0, #887 ; Posição da tela para printar
	loadn r1, #flag9
	loadn r2, #2304
	call Imprimestr

	loadn r0, #927 ; Posição da tela para printar
	loadn r1, #flag10
	loadn r2, #2304
	call Imprimestr

	loadn r0, #967 ; Posição da tela para printar
	loadn r1, #flag11
	loadn r2, #2304
	call Imprimestr

	loadn r0, #1007 ; Posição da tela para printar
	loadn r1, #flag12
	loadn r2, #2304
	call Imprimestr

	loadn r0, #1047 ; Posição da tela para printar
	loadn r1, #flag13
	loadn r2, #2304
	call Imprimestr

	loadn r0, #1087 ; Posição da tela para printar
	loadn r1, #flag14
	loadn r2, #2304
	call Imprimestr

	loadn r0, #1127 ; Posição da tela para printar
	loadn r1, #flag15
	loadn r2, #2304
	call Imprimestr

	loadn r0, #1167 ; Posição da tela para printar
	loadn r1, #flag16
	loadn r2, #2304
	call Imprimestr

	;Printar agora as opcoes de nível
	loadn r0, #482 ; Posição da tela para printar
	loadn r1, #instruction0
	loadn r2, #1792
	call Imprimestr

	loadn r0, #522 ; Posição da tela para printar
	loadn r1, #instruction1
	loadn r2, #1792
	call Imprimestr

	pop r2
	pop r1
	pop r0
	rts
; -----------------------------------------------------------------------------

end:
	halt
