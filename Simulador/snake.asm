; Snake
; Authors:
;			Gabriel Mattheus Bezerra Alves de Carvalho		NUSP: 9779429
;			Wallace Cruz de Souza					NUSP: 9779392

SnakePosition:	var #1000
SnakeSize:		var #1
SnakeDirection:	var #1 ; d: right, s: down, a: left, w: up

TargetPosition:	var #1
Score:			var #1
Score1:			var #1
Score2:			var #1
Score3: 		var #1			
Stage:			var #1
Speed:			var #1

TargetItGlobal:		var #1

rand:			var #600
static rand + #0, #346
static rand + #1, #1104
static rand + #2, #154
static rand + #3, #429
static rand + #4, #841
static rand + #5, #923
static rand + #6, #205
static rand + #7, #1139
static rand + #8, #1149
static rand + #9, #628
static rand + #10, #419
static rand + #11, #829
static rand + #12, #682
static rand + #13, #512
static rand + #14, #1027
static rand + #15, #504
static rand + #16, #441
static rand + #17, #779
static rand + #18, #938
static rand + #19, #635
static rand + #20, #1151
static rand + #21, #241
static rand + #22, #982
static rand + #23, #921
static rand + #24, #593
static rand + #25, #198
static rand + #26, #1062
static rand + #27, #276
static rand + #28, #478
static rand + #29, #831
static rand + #30, #513
static rand + #31, #704
static rand + #32, #252
static rand + #33, #1062
static rand + #34, #1013
static rand + #35, #972
static rand + #36, #302
static rand + #37, #574
static rand + #38, #951
static rand + #39, #808
static rand + #40, #1081
static rand + #41, #726
static rand + #42, #993
static rand + #43, #1118
static rand + #44, #595
static rand + #45, #337
static rand + #46, #979
static rand + #47, #392
static rand + #48, #995
static rand + #49, #757
static rand + #50, #907
static rand + #51, #987
static rand + #52, #876
static rand + #53, #729
static rand + #54, #748
static rand + #55, #825
static rand + #56, #284
static rand + #57, #128
static rand + #58, #981
static rand + #59, #1158
static rand + #60, #838
static rand + #61, #850
static rand + #62, #180
static rand + #63, #969
static rand + #64, #229
static rand + #65, #549
static rand + #66, #781
static rand + #67, #410
static rand + #68, #1002
static rand + #69, #1088
static rand + #70, #574
static rand + #71, #401
static rand + #72, #132
static rand + #73, #407
static rand + #74, #358
static rand + #75, #606
static rand + #76, #624
static rand + #77, #178
static rand + #78, #877
static rand + #79, #975
static rand + #80, #291
static rand + #81, #1140
static rand + #82, #802
static rand + #83, #523
static rand + #84, #187
static rand + #85, #907
static rand + #86, #189
static rand + #87, #350
static rand + #88, #914
static rand + #89, #1049
static rand + #90, #865
static rand + #91, #1108
static rand + #92, #739
static rand + #93, #924
static rand + #94, #917
static rand + #95, #847
static rand + #96, #313
static rand + #97, #1054
static rand + #98, #613
static rand + #99, #671
static rand + #100, #459
static rand + #101, #544
static rand + #102, #950
static rand + #103, #470
static rand + #104, #830
static rand + #105, #665
static rand + #106, #432
static rand + #107, #810
static rand + #108, #722
static rand + #109, #666
static rand + #110, #626
static rand + #111, #369
static rand + #112, #646
static rand + #113, #784
static rand + #114, #771
static rand + #115, #712
static rand + #116, #531
static rand + #117, #838
static rand + #118, #419
static rand + #119, #801
static rand + #120, #728
static rand + #121, #124
static rand + #122, #749
static rand + #123, #823
static rand + #124, #404
static rand + #125, #1022
static rand + #126, #1026
static rand + #127, #596
static rand + #128, #393
static rand + #129, #996
static rand + #130, #623
static rand + #131, #209
static rand + #132, #380
static rand + #133, #413
static rand + #134, #1074
static rand + #135, #566
static rand + #136, #957
static rand + #137, #347
static rand + #138, #733
static rand + #139, #1035
static rand + #140, #892
static rand + #141, #715
static rand + #142, #244
static rand + #143, #378
static rand + #144, #339
static rand + #145, #894
static rand + #146, #447
static rand + #147, #227
static rand + #148, #1090
static rand + #149, #745
static rand + #150, #384
static rand + #151, #135
static rand + #152, #225
static rand + #153, #490
static rand + #154, #838
static rand + #155, #508
static rand + #156, #868
static rand + #157, #181
static rand + #158, #460
static rand + #159, #1141
static rand + #160, #1056
static rand + #161, #962
static rand + #162, #706
static rand + #163, #276
static rand + #164, #731
static rand + #165, #620
static rand + #166, #722
static rand + #167, #528
static rand + #168, #323
static rand + #169, #295
static rand + #170, #403
static rand + #171, #1094
static rand + #172, #366
static rand + #173, #1042
static rand + #174, #829
static rand + #175, #584
static rand + #176, #253
static rand + #177, #1155
static rand + #178, #167
static rand + #179, #183
static rand + #180, #217
static rand + #181, #431
static rand + #182, #198
static rand + #183, #321
static rand + #184, #801
static rand + #185, #392
static rand + #186, #185
static rand + #187, #508
static rand + #188, #452
static rand + #189, #524
static rand + #190, #1005
static rand + #191, #349
static rand + #192, #842
static rand + #193, #551
static rand + #194, #1020
static rand + #195, #413
static rand + #196, #528
static rand + #197, #1098
static rand + #198, #297
static rand + #199, #730
static rand + #200, #749
static rand + #201, #579
static rand + #202, #142
static rand + #203, #994
static rand + #204, #977
static rand + #205, #850
static rand + #206, #419
static rand + #207, #1109
static rand + #208, #322
static rand + #209, #465
static rand + #210, #649
static rand + #211, #934
static rand + #212, #252
static rand + #213, #203
static rand + #214, #611
static rand + #215, #931
static rand + #216, #474
static rand + #217, #675
static rand + #218, #796
static rand + #219, #282
static rand + #220, #555
static rand + #221, #641
static rand + #222, #1026
static rand + #223, #237
static rand + #224, #549
static rand + #225, #887
static rand + #226, #1045
static rand + #227, #956
static rand + #228, #825
static rand + #229, #182
static rand + #230, #526
static rand + #231, #415
static rand + #232, #1156
static rand + #233, #547
static rand + #234, #249
static rand + #235, #450
static rand + #236, #753
static rand + #237, #1063
static rand + #238, #398
static rand + #239, #431
static rand + #240, #885
static rand + #241, #404
static rand + #242, #205
static rand + #243, #1016
static rand + #244, #486
static rand + #245, #695
static rand + #246, #265
static rand + #247, #316
static rand + #248, #726
static rand + #249, #940
static rand + #250, #994
static rand + #251, #121
static rand + #252, #937
static rand + #253, #860
static rand + #254, #753
static rand + #255, #842
static rand + #256, #1103
static rand + #257, #1154
static rand + #258, #638
static rand + #259, #246
static rand + #260, #176
static rand + #261, #521
static rand + #262, #540
static rand + #263, #688
static rand + #264, #424
static rand + #265, #145
static rand + #266, #1017
static rand + #267, #1057
static rand + #268, #565
static rand + #269, #773
static rand + #270, #844
static rand + #271, #290
static rand + #272, #533
static rand + #273, #406
static rand + #274, #662
static rand + #275, #376
static rand + #276, #457
static rand + #277, #283
static rand + #278, #571
static rand + #279, #1063
static rand + #280, #579
static rand + #281, #921
static rand + #282, #1063
static rand + #283, #357
static rand + #284, #1138
static rand + #285, #134
static rand + #286, #1078
static rand + #287, #1081
static rand + #288, #128
static rand + #289, #1073
static rand + #290, #167
static rand + #291, #700
static rand + #292, #434
static rand + #293, #1102
static rand + #294, #228
static rand + #295, #737
static rand + #296, #1127
static rand + #297, #602
static rand + #298, #1150
static rand + #299, #532
static rand + #300, #731
static rand + #301, #312
static rand + #302, #178
static rand + #303, #1143
static rand + #304, #597
static rand + #305, #718
static rand + #306, #358
static rand + #307, #933
static rand + #308, #358
static rand + #309, #287
static rand + #310, #836
static rand + #311, #817
static rand + #312, #1087
static rand + #313, #217
static rand + #314, #1053
static rand + #315, #1065
static rand + #316, #230
static rand + #317, #449
static rand + #318, #464
static rand + #319, #237
static rand + #320, #362
static rand + #321, #510
static rand + #322, #816
static rand + #323, #152
static rand + #324, #453
static rand + #325, #401
static rand + #326, #245
static rand + #327, #936
static rand + #328, #882
static rand + #329, #752
static rand + #330, #824
static rand + #331, #453
static rand + #332, #943
static rand + #333, #881
static rand + #334, #952
static rand + #335, #380
static rand + #336, #956
static rand + #337, #152
static rand + #338, #669
static rand + #339, #155
static rand + #340, #318
static rand + #341, #862
static rand + #342, #329
static rand + #343, #761
static rand + #344, #958
static rand + #345, #222
static rand + #346, #144
static rand + #347, #1067
static rand + #348, #1066
static rand + #349, #487
static rand + #350, #660
static rand + #351, #784
static rand + #352, #876
static rand + #353, #833
static rand + #354, #815
static rand + #355, #685
static rand + #356, #1113
static rand + #357, #940
static rand + #358, #461
static rand + #359, #312
static rand + #360, #532
static rand + #361, #641
static rand + #362, #121
static rand + #363, #315
static rand + #364, #878
static rand + #365, #952
static rand + #366, #1090
static rand + #367, #675
static rand + #368, #460
static rand + #369, #1115
static rand + #370, #186
static rand + #371, #134
static rand + #372, #817
static rand + #373, #394
static rand + #374, #775
static rand + #375, #615
static rand + #376, #1012
static rand + #377, #798
static rand + #378, #1038
static rand + #379, #395
static rand + #380, #125
static rand + #381, #1055
static rand + #382, #1059
static rand + #383, #357
static rand + #384, #728
static rand + #385, #714
static rand + #386, #398
static rand + #387, #681
static rand + #388, #1010
static rand + #389, #216
static rand + #390, #872
static rand + #391, #382
static rand + #392, #737
static rand + #393, #872
static rand + #394, #1092
static rand + #395, #455
static rand + #396, #141
static rand + #397, #499
static rand + #398, #486
static rand + #399, #481
static rand + #400, #455
static rand + #401, #1068
static rand + #402, #494
static rand + #403, #1151
static rand + #404, #818
static rand + #405, #625
static rand + #406, #1123
static rand + #407, #147
static rand + #408, #779
static rand + #409, #478
static rand + #410, #422
static rand + #411, #260
static rand + #412, #373
static rand + #413, #321
static rand + #414, #497
static rand + #415, #980
static rand + #416, #914
static rand + #417, #775
static rand + #418, #1017
static rand + #419, #765
static rand + #420, #870
static rand + #421, #206
static rand + #422, #503
static rand + #423, #963
static rand + #424, #434
static rand + #425, #436
static rand + #426, #259
static rand + #427, #455
static rand + #428, #291
static rand + #429, #1140
static rand + #430, #292
static rand + #431, #625
static rand + #432, #1048
static rand + #433, #665
static rand + #434, #1133
static rand + #435, #184
static rand + #436, #647
static rand + #437, #1096
static rand + #438, #210
static rand + #439, #266
static rand + #440, #414
static rand + #441, #511
static rand + #442, #406
static rand + #443, #667
static rand + #444, #711
static rand + #445, #259
static rand + #446, #1003
static rand + #447, #982
static rand + #448, #913
static rand + #449, #861
static rand + #450, #1103
static rand + #451, #1139
static rand + #452, #946
static rand + #453, #446
static rand + #454, #943
static rand + #455, #221
static rand + #456, #238
static rand + #457, #558
static rand + #458, #1071
static rand + #459, #409
static rand + #460, #538
static rand + #461, #203
static rand + #462, #913
static rand + #463, #427
static rand + #464, #224
static rand + #465, #886
static rand + #466, #1006
static rand + #467, #750
static rand + #468, #299
static rand + #469, #1095
static rand + #470, #373
static rand + #471, #593
static rand + #472, #447
static rand + #473, #658
static rand + #474, #616
static rand + #475, #514
static rand + #476, #796
static rand + #477, #459
static rand + #478, #336
static rand + #479, #1065
static rand + #480, #676
static rand + #481, #278
static rand + #482, #1044
static rand + #483, #463
static rand + #484, #1121
static rand + #485, #304
static rand + #486, #1078
static rand + #487, #198
static rand + #488, #741
static rand + #489, #467
static rand + #490, #487
static rand + #491, #1158
static rand + #492, #549
static rand + #493, #757
static rand + #494, #942
static rand + #495, #129
static rand + #496, #998
static rand + #497, #788
static rand + #498, #758
static rand + #499, #139
static rand + #500, #201
static rand + #501, #488
static rand + #502, #1127
static rand + #503, #526
static rand + #504, #1025
static rand + #505, #583
static rand + #506, #397
static rand + #507, #138
static rand + #508, #398
static rand + #509, #1128
static rand + #510, #558
static rand + #511, #954
static rand + #512, #248
static rand + #513, #958
static rand + #514, #773
static rand + #515, #725
static rand + #516, #1143
static rand + #517, #169
static rand + #518, #803
static rand + #519, #201
static rand + #520, #515
static rand + #521, #647
static rand + #522, #716
static rand + #523, #943
static rand + #524, #761
static rand + #525, #1014
static rand + #526, #951
static rand + #527, #1115
static rand + #528, #1158
static rand + #529, #1066
static rand + #530, #1133
static rand + #531, #198
static rand + #532, #394
static rand + #533, #577
static rand + #534, #1121
static rand + #535, #775
static rand + #536, #516
static rand + #537, #357
static rand + #538, #269
static rand + #539, #794
static rand + #540, #326
static rand + #541, #184
static rand + #542, #1104
static rand + #543, #969
static rand + #544, #1023
static rand + #545, #194
static rand + #546, #534
static rand + #547, #483
static rand + #548, #242
static rand + #549, #693
static rand + #550, #563
static rand + #551, #636
static rand + #552, #696
static rand + #553, #636
static rand + #554, #935
static rand + #555, #812
static rand + #556, #490
static rand + #557, #203
static rand + #558, #768
static rand + #559, #489
static rand + #560, #626
static rand + #561, #218
static rand + #562, #567
static rand + #563, #899
static rand + #564, #675
static rand + #565, #1043
static rand + #566, #1031
static rand + #567, #547
static rand + #568, #241
static rand + #569, #656
static rand + #570, #697
static rand + #571, #962
static rand + #572, #721
static rand + #573, #1157
static rand + #574, #771
static rand + #575, #583
static rand + #576, #191
static rand + #577, #661
static rand + #578, #945
static rand + #579, #828
static rand + #580, #710
static rand + #581, #864
static rand + #582, #304
static rand + #583, #247
static rand + #584, #856
static rand + #585, #595
static rand + #586, #415
static rand + #587, #187
static rand + #588, #155
static rand + #589, #1062
static rand + #590, #1071
static rand + #591, #660
static rand + #592, #637
static rand + #593, #994
static rand + #594, #398
static rand + #595, #668
static rand + #596, #877
static rand + #597, #786
static rand + #598, #1094
static rand + #599, #474

GameOverMessage:	string "GAME OVER!"
GameOverErase:		string "          "
RestartMessage:		string "Press 'Space' to Restart"
RestartErase:		string "                        "

StageSuccess:		string "YOU WIN!"
StageErase:			string "		"
NextLevelMessage:	string " Press 'Space' for next level  "
NextLevelErase:		string "                               "

score_string  : 	string "SCORE =                                "

; Main procedure
main:

	; Print string
	loadn r0, #0
	loadn r1, #score_string
	loadn r2, #0
	call print_string

	; Start values
	call start_values

	; Print map
	call print_map

	call main_loop

	rts

; Start snake values
main_loop:

	call start_snake

	inner_loop:
		on_game_loop:
			call print_snake
			call move_snake
			call check_collision
			call delay

			jmp on_game_loop

		on_game_over_loop:
			call randomizer
			call restart

			jmp on_game_over_loop
	
;;;;;;; Auxiliary functions	;;;;;;;;;;;;;

start_values:
	; Starting speed
	loadn r0, #9000
	store Speed, r0

	; Initialize score
	loadn r1, #0 		; Carrega 0 no r1
	store Score1, r1
	
	loadn r1, #0 		; Carrega 0 no r1
	store Score2, r1
	
	loadn r1, #0 		; Carrega 0 no r1
	store Score3, r1

	; Print score
	loadn r2, #10
	loadn r3, #48
	outchar r3, r2
	
	loadn r2, #11
	loadn r3, #48
	outchar r3, r2
	
	loadn r2, #12
	loadn r3, #48
	outchar r3, r2

	; Set positions
	loadn r4, #130
	store TargetPosition, r4

	loadn r5, #600
	store SnakePosition, r5

	loadn r6, #1
	store SnakeSize, r1

	loadn r6, #rand	; carregando o endereço de rand  em r6
	store TargetItGlobal, r6	; variável global para controle da lista de rand

	rts

	
; Incrementa o score atual
increment_score:
	push r0
	push r1
	push r2
	push r3

	; Incrementa ultimo digito do score
	loadn r3, #10
	load r0, Score3
	inc r0
	cmp r0, r3
	jeq increment_2
	
	; Se só tem uma unidade, apenas incrementa
	loadn r2, #12	; Posicao inicial
	store Score3, r0
	loadn r4, #48
	add r0, r0, r4
	outchar r0, r2
	
	jmp increment_end
	
	; Caso precise incrementar o dígito do meio
	increment_2:
		; Verifica se precisa incrementar o primeiro digito
		load r0, Score2
		inc r0
		cmp r0, r3
		jeq increment_3
	
		; Incrementa o segundo digito
		loadn r2, #11	; Posicao inicial
		store Score2, r0
		loadn r4, #48
		add r0, r0, r4
		outchar r0, r2
		
		; Coloca o ultimo digito como 0
		loadn r2, #12
		loadn r0, #0
		store Score3, r0
		loadn r4, #48
		add r0, r0, r4
		outchar r0, r2
		jmp increment_end
		
	; Caso precise incrementar o primeiro digito (das centenas)
	increment_3:
		; Incrementa
		load r0, Score1
		inc r0
		store Score1, r0
	
		; Printa primeiro digito
		loadn r2, #10	; Posicao inicial
		loadn r4, #48
		add r0, r0, r4
		outchar r0, r2
		
		; Printa segundo digito = 0
		loadn r2, #11
		loadn r0, #0
		store Score2, r0
		loadn r4, #48
		add r0, r0, r4
		outchar r0, r2
		
		; Printa terceiro digito = 0
		loadn r2, #12
		loadn r0, #0
		store Score3, r0
		loadn r4, #48
		add r0, r0, r4
		outchar r0, r2

	; Finaliza o procedimento
	increment_end:
	
		pop r3
		pop r2
		pop r1
		pop r0

	rts


; Cada linha é composta por 40 'pixels', o próximo pixel e mostrado no começo da próxima linha
print_map:
    push r0
    push r1
    push r2
    push r3
    push r4

    loadn r0, #80    ; começo do quadrado (segunda linha do lado superior esquerdo)
    loadn r1, #119    ; lado direito vertical do quadrado

    loadn r2, #'&'  ; desenho da borda

    loadn r3, #40    ; espaço entre as colunas

    loadn r4, #2816    ; define a cor das bordas como amarelo
    add r2, r2, r4

    loadn r4, #1200

    ; Imorime as bordas laterais do mapa
    Stage_Loop1:

        outchar r2, r0    ; começa a impressão no topo esquerdo do quadrado
        outchar r2, r1    ; imprime o caracter no fim da primeira linha

        add r0, r0, r3    ; posiciona r0 no começo da nova linha
        add r1, r1, r3    ; posiciona r1 no fim a da nova linha

        cmp r0, r4    ; compara se chegou no fim da tela
        jle Stage_Loop1    ; continua a no loop

    loadn r0, #81    ; posiciona r0 na segunda posição da terceira linha
    loadn r1, #1161    ;
    loadn r3, #120    ; loop da segunda posição da terceira linha até o fim da mesma

    ; Imprime as bordas superior e inferior do mapa
    Stage_Loop2:
        outchar r2, r0    ; imprime o caracter na coluna r0 da terceira linha
        outchar r2, r1    ; imprime o caracter no coluna r0 da ultima linha

        inc r0    ; vai para a proxima coluna da terceira linha
        inc r1    ; vai para a proxima coluna da ultima linha

        cmp r0, r3    ; compara se chegou no fim da linha
        jle Stage_Loop2

    pop r4
    pop r3
    pop r2
    pop r1
    pop r0

    rts

	
; Inicializa snake
start_snake:
	push r0
	push r1
	push r2
	push r3

	; Iniciando os valores das posicoes da snake
	loadn r0, #3
	store SnakeSize, r0

	; Primeira posicao
	loadn r0, #SnakePosition
	loadn r1, #500
	storei r0, r1

	; Segunda posicao
	inc r0
	dec r1
	storei r0, r1

	; Terceira posicao
	inc r0
	dec r1
	storei r0, r1

	; Quarta posicao
	inc r0
	dec r1
	storei r0, r1

	; Posicao final
	inc r0
	loadn r1, #0	; Fim de snake
	storei r0, r1

	;
	; Printando a snake
	loadn r0, #SnakePosition
	loadn r1, #48	; 0, aqui, é parte da snake
	loadi r2, r0 	; Primeira posicao da snake
	loadn r3, #0	; 0, aqui, é posicao vazia

	loop:
		outchar r1, r2

		inc r0
		loadi r2, r0
		cmp r2, r3
		jne loop

	loadn r0, #820
	call new_target_position

	loadn r0, #0
	store SnakeDirection, r0

	pop r3
	pop r2
	pop r1
	pop r0

	rts


print_snake:
	push r0
	push r1
	push r2
	push r3

	; Sincroniza com o delay
	loadn r0, #1000
	loadn r1, #0
	mod r0, r6, r0
	cmp r0, r1
	jne print_snake_end

	; Printa o target
	call print_target

	; Printa cabeça da snake
	loadn r0, #SnakePosition
	loadn r1, #'#'
	loadi r2, r0
	outchar r1, r2

	; Apaga a ponta da cauda da snake
	loadn r1, #' '
	load r3, SnakeSize
	add r0, r0, r3
	loadi r2, r0
	outchar r1, r2

	print_snake_end:
		pop r3
		pop r2
		pop r1
		pop r0

	rts


; Printa um target
; r0: posicao do target
; Imprimindo a comida
print_target:
	push r2
	push r0
	push r1

	load r0, TargetPosition
	loadn r1, #'@'
	loadn r2, #2304
	add r1, r1, r2

	outchar r1, r0

	pop r1
	pop r0
	pop r2

	rts

; Nova posição da comida
new_target_position:
	push r0
	push r1
	push r2
	push r3

	load r0, TargetItGlobal
	loadi r1, r0
	store TargetPosition, r1
	call print_target
	inc r0
	store TargetItGlobal, r0

	loadn r2, #rand	; ultimo elemento da lista
	loadn r3, #600
	add r2, r2, r3
	cmp r0, r2	; Se não chegou ao fim da lista
	jle end_procedure	; termina o procedimento

	loadn r0, #0		; caso contrário aponta para o começo da lista
	store TargetItGlobal, r0

end_procedure:
	pop r3
	pop r2
	pop r1
	pop r0

	rts

move_snake:
	push r0	; Dir / SnakePos
	push r1	; inchar
	push r2 ; local helper
	push r3
	push r4

	; Sincronização
	loadn r0, #5000
	loadn r1, #0
	mod r0, r6, r0
	cmp r0, r1
	jne move_snake_end

	check_target:
		load r0, TargetPosition		; posicao do target
		loadn r1, #SnakePosition			; posicao da snake
		loadi r2, r1

		cmp r0, r2 ; é target?
		jne move

		call increment_score ; se for comida, incrementa pontuacao

		; Atualiza tamanho da snake
		load r0, SnakeSize
		inc r0
		store SnakeSize, r0

		;;;;;;;;;;;; MUDAR ;;;;;;;;;
		loadn r0, #220
		call new_target_position
		;;;;;;;;;;; MUDAR ;;;;;;;;;;;

	move:
		loadn r0, #SnakePosition
		loadn r1, #SnakePosition
		load r2, SnakeSize

		add r0, r0, r2 ; ultimo valor da snake
		dec r2 			; penultimo valor da snake
		add r1, r1, r2
		loadn r4, #0

		internal_loop:
			loadi 	r3, r1
			storei 	r0, r3

			dec r0
			dec r1

			cmp r2, r4
			dec r2

			jne internal_loop

	change_direction:
		inchar r1

		loadn r2, #100	; char in = 'd'
		cmp r1, r2
		jeq move_D

		loadn r2, #115	; char in = 's'
		cmp r1, r2
		jeq move_S

		loadn r2, #97	; char in = 'a'
		cmp r1, r2
		jeq move_A

		loadn r2, #119	; char in = 'w'
		cmp r1, r2
		jeq move_W

		jmp update_movement

		move_D:
			loadn r0, #0
			; Tratando erro de mover no sentido contrario
			loadn r1, #2
			load r2, SnakeDirection
			cmp r1, r2
			jeq move_left

			store SnakeDirection, r0
			jmp move_right

		move_S:
			loadn r0, #1
			; Tratando erro de mover no sentido contrario
			loadn r1, #3
			load r2, SnakeDirection
			cmp r1, r2
			jeq move_up

			store SnakeDirection, r0
			jmp move_down

		move_A:
			loadn r0, #2
			; Tratando erro de mover no sentido contrario
			loadn r1, #0
			load r2, SnakeDirection
			cmp r1, r2
			jeq move_right

			store SnakeDirection, r0
			jmp move_left

		move_W:
			loadn r0, #3
			; Tratando erro de mover no sentido contrario
			loadn r1, #1
			load r2, SnakeDirection
			cmp r1, r2
			jeq move_down

			store SnakeDirection, r0
			jmp move_up

	update_movement:
		load r0, SnakeDirection

		loadn r2, #0
		cmp r0, r2
		jeq move_right

		loadn r2, #1
		cmp r0, r2
		jeq move_down

		loadn r2, #2
		cmp r0, r2
		jeq move_left

		loadn r2, #3
		cmp r0, r2
		jeq move_up

		jmp move_snake_end

		move_right:
			loadn r0, #SnakePosition
			loadi r1, r0		; Primeira posicao
			inc r1				; Incrementa primeira posicao
			storei r0, r1

			jmp move_snake_end

		move_down:
			loadn r0, #SnakePosition	; Primeira posicao
			loadi r1, r0
			loadn r2, #40
			add r1, r1, r2				; Adiciona 40: linha abaixo
			storei r0, r1

			jmp move_snake_end

		move_left:
			loadn r0, #SnakePosition	; Primeira posicao
			loadi r1, r0

			dec r1						; Menos uma posicao
			storei r0, r1

			jmp move_snake_end

		move_up:
			loadn r0, #SnakePosition
			loadi r1, r0				; Primeira posicao
			loadn r2, #40
			sub r1, r1, r2				; Subtrai 40: linha acima
			storei r0, r1

	move_snake_end:
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

	rts


; Imprime uma string ate encontrar '\0'
; r0: posicao inicial da tela
; r1: posicao inicial da mensagem
; r2: cor da mensagem
print_string:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r3, #'\0'		; Criterio de parada

	print_string_loop:
		loadi r4, r1
		cmp r4, r3 		; Verifica se é '\0'
		jeq print_string_end
		add r4, r4, r2	; Cor
		outchar r4, r0
		inc r0
		inc r1
		jmp print_string_loop

	print_string_end:
		pop r0
		pop r1
		pop r2
		pop r3
		pop r4
	rts

; Verifica se ocorreu colisão
check_collision:
	loadn r0, #SnakePosition
	loadi r1, r0

	; Verifica colisão com a borda direita
	loadn r2, #40
	loadn r3, #39
	mod r2, r1, r2
	cmp r2, r3
	jeq game_over_trigger

	; Verifica colisão com a borda esquerda
	loadn r2, #40
	loadn r3, #0
	mod r2, r1, r2
	cmp r2, r3
	jeq game_over_trigger

	; Verifica colisão com a borda superior
	loadn r2, #119
	cmp r1, r2
	jle game_over_trigger

	; Verifica colisão com a borda inferior
	loadn r2, #1160
	cmp r1, r2
	jgr game_over_trigger

	; Verifica colisão com a própria snake
	load r2, SnakeSize
	loadi r4, r0		; Primeira posicao
	loadn r3, #1

	check_collision_loop:
		inc r0
		loadi r1, r0
		cmp r1, r4
		jeq game_over_trigger

		; Ainda há posições para checar?
		dec r2
		cmp r2, r3
		jne check_collision_loop

	jmp check_collision_end

	game_over_trigger:
		load r0, TargetPosition
		loadn r1, #' '
		outchar r1, r0

		loadn r0, #615
		loadn r1, #GameOverMessage
		loadn r2, #0
		call print_string

		loadn r0, #687
		loadn r1, #RestartMessage
		loadn r2, #0
		call print_string

		jmp on_game_over_loop


	check_collision_end:
	rts

	
delete_snake:
	push r0
	push r1
	push r2
	push r3

	loadn r0, #SnakePosition
	inc r0
	loadn r1, #' '
	loadi r2, r0
	loadn r3, #0
	
	delete_loop:
		outchar r1, r2
		inc r0
		loadi r2, r0
		
		cmp r2, r3	; Acabou a snake?
		jne delete_loop
	
	delete_end:
		pop r3
		pop r2
		pop r1
		pop r0
		
	rts
		
		
restart:
	push r0
	push r1
	push r2
	

	inchar r0
	loadn r1, #' '
	
	; Se presisonou espaço
	cmp r0, r1
	jeq restart_trigger
	
	; Se não, retorna
	jmp restart_end
	
	restart_trigger:
		; Apaga Game Over Message
		loadn r0, #615
		loadn r1, #GameOverErase
		loadn r2, #0
		call print_string
		
		; Apaga Restart Message
		loadn r0, #687
		loadn r1, #RestartErase
		loadn r2, #0
		call print_string
		
		; Deleta a snake
		call delete_snake
		
		; Restart score
		loadn r1, #0 		; Carrega 0 no r1
		store Score1, r1
	
		loadn r1, #0 		; Carrega 0 no r1
		store Score2, r1
	
		loadn r1, #0 		; Carrega 0 no r1
		store Score3, r1

		loadn r2, #10
		loadn r3, #48
		outchar r3, r2
	
		loadn r2, #11
		loadn r3, #48
		outchar r3, r2
	
		loadn r2, #12
		loadn r3, #48
		outchar r3, r2		

		jmp main_loop

		
	restart_end:
		pop r2
		pop r1
		pop r0 
		
	rts

randomizer:
	push r0
	push r1
	push r2
	push r3

	load r0, TargetItGlobal
	loadn r2, #5
	add r0, r0, r2
	loadi r1, r0
	store TargetPosition, r1
	inc r0
	store TargetItGlobal, r0

	loadn r2, #rand	; ultimo elemento da lista
	loadn r3, #600
	add r2, r2, r3
	cmp r0, r2	; Se não chegou ao fim da lista
	jle end_procedure	; termina o procedimento

	loadn r0, #rand		; caso contrário aponta para o começo da lista
	store TargetItGlobal, r0

end_procedure:
	pop r3
	pop r2
	pop r1
	pop r0

	rts

delay:
	push r0

	inc r6
	load r0, Speed
	cmp r6, r0
	jgr Reset_Timer

	jmp Timer_End

	Reset_Timer:
		loadn r6, #0
	Timer_End:
		pop r0

	rts
