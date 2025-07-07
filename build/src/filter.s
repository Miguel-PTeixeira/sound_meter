	.file	"filter.c"
	.text
.Ltext0:
	.file 0 "/home/aluno/Desktop/sound_meter-master_v03" "src/filter.c"
	.type	linear_to_decibel, @function
linear_to_decibel:
.LFB6:
	.file 1 "src/process.h"
	.loc 1 41 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	.loc 1 42 31
	pxor	%xmm1, %xmm1
	cvtss2sd	-4(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 1 42 17
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	log10@PLT
	.loc 1 42 15 discriminator 1
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 43 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	linear_to_decibel, .-linear_to_decibel
	.section	.rodata
	.align 32
	.type	A_WEIGHTED_taps, @object
	.size	A_WEIGHTED_taps, 72
A_WEIGHTED_taps:
	.long	1047522511
	.long	1055911119
	.long	1047522511
	.long	1065353216
	.long	-1100615001
	.long	1011780613
	.long	1065353216
	.long	-1073741824
	.long	1065353216
	.long	1065353216
	.long	-1074632103
	.long	1063594289
	.long	1065353216
	.long	-1073741824
	.long	1065353216
	.long	1065353216
	.long	-1073787001
	.long	1065262983
	.align 32
	.type	C_WEIGHTED_taps, @object
	.size	C_WEIGHTED_taps, 48
C_WEIGHTED_taps:
	.long	1045078764
	.long	1053467372
	.long	1045078764
	.long	1065353216
	.long	-1100615001
	.long	1011780613
	.long	1065353216
	.long	-1073741824
	.long	1065353216
	.long	1065353216
	.long	-1073787001
	.long	1065262983
	.align 16
	.type	TWSL_FAST_taps, @object
	.size	TWSL_FAST_taps, 16
TWSL_FAST_taps:
	.long	965649635
	.long	0
	.long	1065353216
	.long	-1082134997
	.align 16
	.type	TWSL_SLOW_taps, @object
	.size	TWSL_SLOW_taps, 16
TWSL_SLOW_taps:
	.long	940484910
	.long	0
	.long	1065353216
	.long	-1082131003
	.align 32
	.type	OCTAVE_BAND_1, @object
	.size	OCTAVE_BAND_1, 72
OCTAVE_BAND_1:
	.long	985596082
	.long	0
	.long	-1161887566
	.long	1065353216
	.long	-1073757923
	.long	1065321546
	.long	985596082
	.long	0
	.long	-1161887566
	.long	1065353216
	.long	-1073750514
	.long	1065335993
	.long	985586978
	.long	0
	.long	-1161896670
	.long	1065353216
	.long	-1073766398
	.long	1065304355
	.align 32
	.type	OCTAVE_BAND_2, @object
	.size	OCTAVE_BAND_2, 72
OCTAVE_BAND_2:
	.long	993945985
	.long	0
	.long	-1153537663
	.long	1065353216
	.long	-1073774440
	.long	1065290085
	.long	993945985
	.long	0
	.long	-1153537663
	.long	1065353216
	.long	-1073759309
	.long	1065318868
	.long	993927922
	.long	0
	.long	-1153555726
	.long	1065353216
	.long	-1073791070
	.long	1065255866
	.align 32
	.type	OCTAVE_BAND_3, @object
	.size	OCTAVE_BAND_3, 72
OCTAVE_BAND_3:
	.long	1002287046
	.long	0
	.long	-1145196602
	.long	1065353216
	.long	-1073808861
	.long	1065227493
	.long	1002287046
	.long	0
	.long	-1145196602
	.long	1065353216
	.long	-1073777292
	.long	1065284752
	.long	1002251324
	.long	0
	.long	-1145232324
	.long	1065353216
	.long	-1073840929
	.long	1065159535
	.align 32
	.type	OCTAVE_BAND_4, @object
	.size	OCTAVE_BAND_4, 72
OCTAVE_BAND_4:
	.long	1010610535
	.long	0
	.long	-1136873113
	.long	1065353216
	.long	-1073883327
	.long	1065103323
	.long	1010610535
	.long	0
	.long	-1136873113
	.long	1065353216
	.long	-1073814902
	.long	1065216880
	.long	1010540341
	.long	0
	.long	-1136943307
	.long	1065353216
	.long	-1073942914
	.long	1064968966
	.align 32
	.type	OCTAVE_BAND_5, @object
	.size	OCTAVE_BAND_5, 72
OCTAVE_BAND_5:
	.long	1018899370
	.long	0
	.long	-1128584278
	.long	1065353216
	.long	-1074054590
	.long	1064858484
	.long	1018899370
	.long	0
	.long	-1128584278
	.long	1065353216
	.long	-1073896790
	.long	1065082214
	.long	1018763169
	.long	0
	.long	-1128720479
	.long	1065353216
	.long	-1074156176
	.long	1064595078
	.align 32
	.type	OCTAVE_BAND_6, @object
	.size	OCTAVE_BAND_6, 72
OCTAVE_BAND_6:
	.long	1027120747
	.long	0
	.long	-1120362901
	.long	1065353216
	.long	-1074483621
	.long	1064381932
	.long	1027120747
	.long	0
	.long	-1120362901
	.long	1065353216
	.long	-1074087135
	.long	1064816253
	.long	1026862909
	.long	0
	.long	-1120620739
	.long	1065353216
	.long	-1074619205
	.long	1063873048
	.align 32
	.type	OCTAVE_BAND_7, @object
	.size	OCTAVE_BAND_7, 72
OCTAVE_BAND_7:
	.long	1035214264
	.long	0
	.long	-1112269384
	.long	1065353216
	.long	-1075662388
	.long	1063481272
	.long	1035214264
	.long	0
	.long	-1112269384
	.long	1065353216
	.long	-1074571658
	.long	1064294330
	.long	1034748607
	.long	0
	.long	-1112735041
	.long	1065353216
	.long	-1075681515
	.long	1062518608
	.align 32
	.type	OCTAVE_BAND_8, @object
	.size	OCTAVE_BAND_8, 72
OCTAVE_BAND_8:
	.long	1043079491
	.long	0
	.long	-1104404157
	.long	1065353216
	.long	-1079088330
	.long	1061900007
	.long	1043079491
	.long	0
	.long	-1104404157
	.long	1065353216
	.long	-1075930979
	.long	1063271805
	.long	1042308156
	.long	0
	.long	-1105175492
	.long	1065353216
	.long	-1078268691
	.long	1060098530
	.align 32
	.type	OCTAVE_BAND_9, @object
	.size	OCTAVE_BAND_9, 72
OCTAVE_BAND_9:
	.long	1050591277
	.long	0
	.long	-1096892371
	.long	1065353216
	.long	-1079951189
	.long	1061182624
	.long	1050591277
	.long	0
	.long	-1096892371
	.long	1065353216
	.long	-1099174158
	.long	1059712795
	.long	1049490662
	.long	0
	.long	-1097992986
	.long	1065353216
	.long	-1087181602
	.long	1055135285
	.align 32
	.type	OCTAVE_BAND_10, @object
	.size	OCTAVE_BAND_10, 72
OCTAVE_BAND_10:
	.long	1057729185
	.long	0
	.long	-1089754463
	.long	1065353216
	.long	1071957955
	.long	1062518099
	.long	1057729185
	.long	0
	.long	-1089754463
	.long	1065353216
	.long	-1111640784
	.long	1053753409
	.long	1056049041
	.long	0
	.long	-1091434607
	.long	1065353216
	.long	1062552181
	.long	1029670639
	.align 32
	.type	THIRD_OCTAVE_BAND_1, @object
	.size	THIRD_OCTAVE_BAND_1, 96
THIRD_OCTAVE_BAND_1:
	.long	969335084
	.long	0
	.long	-1178148564
	.long	1065353216
	.long	-1073744630
	.long	1065347828
	.long	969335084
	.long	0
	.long	-1178148564
	.long	1065353216
	.long	-1073744074
	.long	1065348862
	.long	969332409
	.long	0
	.long	-1178151239
	.long	1065353216
	.long	-1073748062
	.long	1065340938
	.long	969332409
	.long	0
	.long	-1178151239
	.long	1065353216
	.long	-1073747525
	.long	1065341980
	.align 32
	.type	THIRD_OCTAVE_BAND_2, @object
	.size	THIRD_OCTAVE_BAND_2, 96
THIRD_OCTAVE_BAND_2:
	.long	972709241
	.long	0
	.long	-1174774407
	.long	1065353216
	.long	-1073745393
	.long	1065346434
	.long	972709241
	.long	0
	.long	-1174774407
	.long	1065353216
	.long	-1073744681
	.long	1065347735
	.long	972705003
	.long	0
	.long	-1174778645
	.long	1065353216
	.long	-1073749709
	.long	1065337760
	.long	972705003
	.long	0
	.long	-1174778645
	.long	1065353216
	.long	-1073749027
	.long	1065339073
	.globl	THIRD_OCTAVE_BAND_3
	.align 32
	.type	THIRD_OCTAVE_BAND_3, @object
	.size	THIRD_OCTAVE_BAND_3, 96
THIRD_OCTAVE_BAND_3:
	.long	975017611
	.long	0
	.long	-1172466037
	.long	1065353216
	.long	-1073746375
	.long	1065344678
	.long	975017611
	.long	0
	.long	-1172466037
	.long	1065353216
	.long	-1073745458
	.long	1065346316
	.long	975014253
	.long	0
	.long	-1172469395
	.long	1065353216
	.long	-1073751801
	.long	1065333760
	.long	975014253
	.long	0
	.long	-1172469395
	.long	1065353216
	.long	-1073750934
	.long	1065335412
	.globl	THIRD_OCTAVE_BAND_4
	.align 32
	.type	THIRD_OCTAVE_BAND_4, @object
	.size	THIRD_OCTAVE_BAND_4, 96
THIRD_OCTAVE_BAND_4:
	.long	977690938
	.long	0
	.long	-1169792710
	.long	1065353216
	.long	-1073747645
	.long	1065342468
	.long	977690938
	.long	0
	.long	-1169792710
	.long	1065353216
	.long	-1073746459
	.long	1065344529
	.long	977685618
	.long	0
	.long	-1169798030
	.long	1065353216
	.long	-1073754463
	.long	1065328726
	.long	977685618
	.long	0
	.long	-1169798030
	.long	1065353216
	.long	-1073753359
	.long	1065330806
	.globl	THIRD_OCTAVE_BAND_5
	.align 32
	.type	THIRD_OCTAVE_BAND_5, @object
	.size	THIRD_OCTAVE_BAND_5, 96
THIRD_OCTAVE_BAND_5:
	.long	981056004
	.long	0
	.long	-1166427644
	.long	1065353216
	.long	-1073749297
	.long	1065339686
	.long	981056004
	.long	0
	.long	-1166427644
	.long	1065353216
	.long	-1073747754
	.long	1065342281
	.long	981047576
	.long	0
	.long	-1166436072
	.long	1065353216
	.long	-1073757861
	.long	1065322391
	.long	981047576
	.long	0
	.long	-1166436072
	.long	1065353216
	.long	-1073756451
	.long	1065325008
	.globl	THIRD_OCTAVE_BAND_6
	.align 32
	.type	THIRD_OCTAVE_BAND_6, @object
	.size	THIRD_OCTAVE_BAND_6, 96
THIRD_OCTAVE_BAND_6:
	.long	983379395
	.long	0
	.long	-1164104253
	.long	1065353216
	.long	-1073751461
	.long	1065336185
	.long	983379395
	.long	0
	.long	-1164104253
	.long	1065353216
	.long	-1073749439
	.long	1065339451
	.long	983372719
	.long	0
	.long	-1164110929
	.long	1065353216
	.long	-1073762212
	.long	1065314419
	.long	983372719
	.long	0
	.long	-1164110929
	.long	1065353216
	.long	-1073760405
	.long	1065317712
	.globl	THIRD_OCTAVE_BAND_7
	.align 32
	.type	THIRD_OCTAVE_BAND_7, @object
	.size	THIRD_OCTAVE_BAND_7, 96
THIRD_OCTAVE_BAND_7:
	.long	986045009
	.long	0
	.long	-1161438639
	.long	1065353216
	.long	-1073754320
	.long	1065331778
	.long	986045009
	.long	0
	.long	-1161438639
	.long	1065353216
	.long	-1073751649
	.long	1065335888
	.long	986034435
	.long	0
	.long	-1161449213
	.long	1065353216
	.long	-1073767806
	.long	1065304388
	.long	986034435
	.long	0
	.long	-1161449213
	.long	1065353216
	.long	-1073765480
	.long	1065308531
	.globl	THIRD_OCTAVE_BAND_8
	.align 32
	.type	THIRD_OCTAVE_BAND_8, @object
	.size	THIRD_OCTAVE_BAND_8, 96
THIRD_OCTAVE_BAND_8:
	.long	989399917
	.long	0
	.long	-1158083731
	.long	1065353216
	.long	-1073758133
	.long	1065326232
	.long	989399917
	.long	0
	.long	-1158083731
	.long	1065353216
	.long	-1073754569
	.long	1065331405
	.long	989383172
	.long	0
	.long	-1158100476
	.long	1065353216
	.long	-1073775033
	.long	1065291769
	.long	989383172
	.long	0
	.long	-1158100476
	.long	1065353216
	.long	-1073772023
	.long	1065296980
	.globl	THIRD_OCTAVE_BAND_9
	.align 32
	.type	THIRD_OCTAVE_BAND_9, @object
	.size	THIRD_OCTAVE_BAND_9, 96
THIRD_OCTAVE_BAND_9:
	.long	991738906
	.long	0
	.long	-1155744742
	.long	1065353216
	.long	-1073763269
	.long	1065319252
	.long	991738906
	.long	0
	.long	-1155744742
	.long	1065353216
	.long	-1073758467
	.long	1065325762
	.long	991725649
	.long	0
	.long	-1155757999
	.long	1065353216
	.long	-1073784421
	.long	1065275895
	.long	991725649
	.long	0
	.long	-1155757999
	.long	1065353216
	.long	-1073780504
	.long	1065282450
	.globl	THIRD_OCTAVE_BAND_10
	.align 32
	.type	THIRD_OCTAVE_BAND_10, @object
	.size	THIRD_OCTAVE_BAND_10, 96
THIRD_OCTAVE_BAND_10:
	.long	994395461
	.long	0
	.long	-1153088187
	.long	1065353216
	.long	-1073770268
	.long	1065310469
	.long	994395461
	.long	0
	.long	-1153088187
	.long	1065353216
	.long	-1073763721
	.long	1065318660
	.long	994374475
	.long	0
	.long	-1153109173
	.long	1065353216
	.long	-1073796700
	.long	1065255933
	.long	994374475
	.long	0
	.long	-1153109173
	.long	1065353216
	.long	-1073791567
	.long	1065264175
	.globl	THIRD_OCTAVE_BAND_11
	.align 32
	.type	THIRD_OCTAVE_BAND_11, @object
	.size	THIRD_OCTAVE_BAND_11, 96
THIRD_OCTAVE_BAND_11:
	.long	997738071
	.long	0
	.long	-1149745577
	.long	1065353216
	.long	-1073779925
	.long	1065299420
	.long	997738071
	.long	0
	.long	-1149745577
	.long	1065353216
	.long	-1073770889
	.long	1065309724
	.long	997704862
	.long	0
	.long	-1149778786
	.long	1065353216
	.long	-1073812888
	.long	1065230837
	.long	997704862
	.long	0
	.long	-1149778786
	.long	1065353216
	.long	-1073806104
	.long	1065241196
	.globl	THIRD_OCTAVE_BAND_12
	.align 32
	.type	THIRD_OCTAVE_BAND_12, @object
	.size	THIRD_OCTAVE_BAND_12, 96
THIRD_OCTAVE_BAND_12:
	.long	1000093840
	.long	0
	.long	-1147389808
	.long	1065353216
	.long	-1073793419
	.long	1065285520
	.long	1000093840
	.long	0
	.long	-1147389808
	.long	1065353216
	.long	-1073780788
	.long	1065298480
	.long	1000067574
	.long	0
	.long	-1147416074
	.long	1065353216
	.long	-1073834418
	.long	1065199296
	.long	1000067574
	.long	0
	.long	-1147416074
	.long	1065353216
	.long	-1073825372
	.long	1065212311
	.globl	THIRD_OCTAVE_BAND_13
	.align 32
	.type	THIRD_OCTAVE_BAND_13, @object
	.size	THIRD_OCTAVE_BAND_13, 96
THIRD_OCTAVE_BAND_13:
	.long	1002738641
	.long	0
	.long	-1144745007
	.long	1065353216
	.long	-1073812521
	.long	1065268040
	.long	1002738641
	.long	0
	.long	-1144745007
	.long	1065353216
	.long	-1073794634
	.long	1065284334
	.long	1002697113
	.long	0
	.long	-1144786535
	.long	1065353216
	.long	-1073863341
	.long	1065159674
	.long	1002697113
	.long	0
	.long	-1144786535
	.long	1065353216
	.long	-1073851155
	.long	1065176017
	.globl	THIRD_OCTAVE_BAND_14
	.align 32
	.type	THIRD_OCTAVE_BAND_14, @object
	.size	THIRD_OCTAVE_BAND_14, 96
THIRD_OCTAVE_BAND_14:
	.long	1006064685
	.long	0
	.long	-1141418963
	.long	1065353216
	.long	-1073839914
	.long	1065246063
	.long	1006064685
	.long	0
	.long	-1141418963
	.long	1065353216
	.long	-1073814257
	.long	1065266540
	.long	1005999066
	.long	0
	.long	-1141484582
	.long	1065353216
	.long	-1073902624
	.long	1065109929
	.long	1005999066
	.long	0
	.long	-1141484582
	.long	1065353216
	.long	-1073886023
	.long	1065130434
	.globl	THIRD_OCTAVE_BAND_15
	.align 32
	.type	THIRD_OCTAVE_BAND_15, @object
	.size	THIRD_OCTAVE_BAND_15, 96
THIRD_OCTAVE_BAND_15:
	.long	1008439620
	.long	0
	.long	-1139044028
	.long	1065353216
	.long	-1073879684
	.long	1065218442
	.long	1008439620
	.long	0
	.long	-1139044028
	.long	1065353216
	.long	-1073842425
	.long	1065244161
	.long	1008387819
	.long	0
	.long	-1139095829
	.long	1065353216
	.long	-1073956602
	.long	1065047519
	.long	1008387819
	.long	0
	.long	-1139095829
	.long	1065353216
	.long	-1073933721
	.long	1065073218
	.globl	THIRD_OCTAVE_BAND_16
	.align 32
	.type	THIRD_OCTAVE_BAND_16, @object
	.size	THIRD_OCTAVE_BAND_16, 96
THIRD_OCTAVE_BAND_16:
	.long	1011067307
	.long	0
	.long	-1136416341
	.long	1065353216
	.long	-1073938088
	.long	1065183749
	.long	1011067307
	.long	0
	.long	-1136416341
	.long	1065353216
	.long	-1073883361
	.long	1065216022
	.long	1010985602
	.long	0
	.long	-1136498046
	.long	1065353216
	.long	-1074031673
	.long	1064969289
	.long	1010985602
	.long	0
	.long	-1136498046
	.long	1065353216
	.long	-1073999756
	.long	1065001455
	.globl	THIRD_OCTAVE_BAND_17
	.align 32
	.type	THIRD_OCTAVE_BAND_17, @object
	.size	THIRD_OCTAVE_BAND_17, 96
THIRD_OCTAVE_BAND_17:
	.long	1014368295
	.long	0
	.long	-1133115353
	.long	1065353216
	.long	-1074024751
	.long	1065140200
	.long	1014368295
	.long	0
	.long	-1133115353
	.long	1065353216
	.long	-1073943540
	.long	1065180646
	.long	1014239580
	.long	0
	.long	-1133244068
	.long	1065353216
	.long	-1074137356
	.long	1064871343
	.long	1014239580
	.long	0
	.long	-1133244068
	.long	1065353216
	.long	-1074092301
	.long	1064911525
	.globl	THIRD_OCTAVE_BAND_18
	.align 32
	.type	THIRD_OCTAVE_BAND_18, @object
	.size	THIRD_OCTAVE_BAND_18, 96
THIRD_OCTAVE_BAND_18:
	.long	1016767182
	.long	0
	.long	-1130716466
	.long	1065353216
	.long	-1074154499
	.long	1065085589
	.long	1016767182
	.long	0
	.long	-1130716466
	.long	1065353216
	.long	-1074032921
	.long	1065136182
	.long	1016665952
	.long	0
	.long	-1130817696
	.long	1065353216
	.long	-1074287885
	.long	1064748890
	.long	1016665952
	.long	0
	.long	-1130817696
	.long	1065353216
	.long	-1074223561
	.long	1064798952
	.globl	THIRD_OCTAVE_BAND_19
	.align 32
	.type	THIRD_OCTAVE_BAND_19, @object
	.size	THIRD_OCTAVE_BAND_19, 96
THIRD_OCTAVE_BAND_19:
	.long	1019367135
	.long	0
	.long	-1128116513
	.long	1065353216
	.long	-1074350176
	.long	1065017194
	.long	1019367135
	.long	0
	.long	-1128116513
	.long	1065353216
	.long	-1074166859
	.long	1065080303
	.long	1019208218
	.long	0
	.long	-1128275430
	.long	1065353216
	.long	-1074504618
	.long	1064596083
	.long	1019208218
	.long	0
	.long	-1128275430
	.long	1065353216
	.long	-1074411843
	.long	1064658217
	.globl	THIRD_OCTAVE_BAND_20
	.align 32
	.type	THIRD_OCTAVE_BAND_20, @object
	.size	THIRD_OCTAVE_BAND_20, 96
THIRD_OCTAVE_BAND_20:
	.long	1022626286
	.long	0
	.long	-1124857362
	.long	1065353216
	.long	-1074646889
	.long	1064931694
	.long	1022626286
	.long	0
	.long	-1124857362
	.long	1065353216
	.long	-1074369025
	.long	1065010081
	.long	1022377409
	.long	0
	.long	-1125106239
	.long	1065353216
	.long	-1074819610
	.long	1064405849
	.long	1022377409
	.long	0
	.long	-1125106239
	.long	1065353216
	.long	-1074684651
	.long	1064482550
	.globl	THIRD_OCTAVE_BAND_21
	.align 32
	.type	THIRD_OCTAVE_BAND_21, @object
	.size	THIRD_OCTAVE_BAND_21, 96
THIRD_OCTAVE_BAND_21:
	.long	1025058694
	.long	0
	.long	-1122424954
	.long	1065353216
	.long	-1075098266
	.long	1064825089
	.long	1025058694
	.long	0
	.long	-1122424954
	.long	1065353216
	.long	-1074675814
	.long	1064921816
	.long	1024864401
	.long	0
	.long	-1122619247
	.long	1065353216
	.long	-1075280769
	.long	1064169742
	.long	1024864401
	.long	0
	.long	-1122619247
	.long	1065353216
	.long	-1075083213
	.long	1064263673
	.globl	THIRD_OCTAVE_BAND_22
	.align 32
	.type	THIRD_OCTAVE_BAND_22, @object
	.size	THIRD_OCTAVE_BAND_22, 96
THIRD_OCTAVE_BAND_22:
	.long	1027610051
	.long	0
	.long	-1119873597
	.long	1065353216
	.long	-1075785304
	.long	1064692669
	.long	1027610051
	.long	0
	.long	-1119873597
	.long	1065353216
	.long	-1075142835
	.long	1064810801
	.long	1027307834
	.long	0
	.long	-1120175814
	.long	1065353216
	.long	-1075959011
	.long	1063877852
	.long	1027307834
	.long	0
	.long	-1120175814
	.long	1065353216
	.long	-1075668882
	.long	1063991508
	.globl	THIRD_OCTAVE_BAND_23
	.align 32
	.type	THIRD_OCTAVE_BAND_23, @object
	.size	THIRD_OCTAVE_BAND_23, 96
THIRD_OCTAVE_BAND_23:
	.long	1030794569
	.long	0
	.long	-1116689079
	.long	1065353216
	.long	-1076827931
	.long	1064529097
	.long	1030794569
	.long	0
	.long	-1116689079
	.long	1065353216
	.long	-1075854044
	.long	1064670962
	.long	1030326678
	.long	0
	.long	-1117156970
	.long	1065353216
	.long	-1076957411
	.long	1063518848
	.long	1030326678
	.long	0
	.long	-1117156970
	.long	1065353216
	.long	-1076531647
	.long	1063653808
	.globl	THIRD_OCTAVE_BAND_24
	.align 32
	.type	THIRD_OCTAVE_BAND_24, @object
	.size	THIRD_OCTAVE_BAND_24, 96
THIRD_OCTAVE_BAND_24:
	.long	1033279648
	.long	0
	.long	-1114204000
	.long	1065353216
	.long	-1078397766
	.long	1064328757
	.long	1033279648
	.long	0
	.long	-1114204000
	.long	1065353216
	.long	-1076933568
	.long	1064494289
	.long	1032919555
	.long	0
	.long	-1114564093
	.long	1065353216
	.long	-1078421005
	.long	1063080292
	.long	1032919555
	.long	0
	.long	-1114564093
	.long	1065353216
	.long	-1077800025
	.long	1063235652
	.globl	THIRD_OCTAVE_BAND_25
	.align 32
	.type	THIRD_OCTAVE_BAND_25, @object
	.size	THIRD_OCTAVE_BAND_25, 96
THIRD_OCTAVE_BAND_25:
	.long	1035742292
	.long	0
	.long	-1111741356
	.long	1065353216
	.long	-1080725792
	.long	1064086683
	.long	1035742292
	.long	0
	.long	-1111741356
	.long	1065353216
	.long	-1078558292
	.long	1064269798
	.long	1035191996
	.long	0
	.long	-1112291652
	.long	1065353216
	.long	-1079648974
	.long	1062718629
	.long	1035191996
	.long	0
	.long	-1112291652
	.long	1065353216
	.long	-1080542321
	.long	1062549486
	.globl	THIRD_OCTAVE_BAND_26
	.align 32
	.type	THIRD_OCTAVE_BAND_26, @object
	.size	THIRD_OCTAVE_BAND_26, 96
THIRD_OCTAVE_BAND_26:
	.long	1038789933
	.long	0
	.long	-1108693715
	.long	1065353216
	.long	-1086044314
	.long	1063800854
	.long	1038789933
	.long	0
	.long	-1108693715
	.long	1065353216
	.long	-1080963731
	.long	1063981443
	.long	1037956366
	.long	0
	.long	-1109527282
	.long	1065353216
	.long	-1082461144
	.long	1062079240
	.long	1037956366
	.long	0
	.long	-1109527282
	.long	1065353216
	.long	-1084968420
	.long	1061915456
	.globl	THIRD_OCTAVE_BAND_27
	.align 32
	.type	THIRD_OCTAVE_BAND_27, @object
	.size	THIRD_OCTAVE_BAND_27, 96
THIRD_OCTAVE_BAND_27:
	.long	1041366266
	.long	0
	.long	-1106117382
	.long	1065353216
	.long	-1101321378
	.long	1063477991
	.long	1041366266
	.long	0
	.long	-1106117382
	.long	1065353216
	.long	-1086713816
	.long	1063603170
	.long	1040741725
	.long	0
	.long	-1106741923
	.long	1065353216
	.long	-1095806234
	.long	1061173718
	.long	1040741725
	.long	0
	.long	-1106741923
	.long	1065353216
	.long	-1089788034
	.long	1061285018
	.globl	THIRD_OCTAVE_BAND_28
	.align 32
	.type	THIRD_OCTAVE_BAND_28, @object
	.size	THIRD_OCTAVE_BAND_28, 96
THIRD_OCTAVE_BAND_28:
	.long	1043667424
	.long	0
	.long	-1103816224
	.long	1065353216
	.long	-1104668216
	.long	1063084608
	.long	1043667424
	.long	0
	.long	-1103816224
	.long	1065353216
	.long	1056593591
	.long	1063150477
	.long	1042743785
	.long	0
	.long	-1104739863
	.long	1065353216
	.long	1020054215
	.long	1060282663
	.long	1042743785
	.long	0
	.long	-1104739863
	.long	1065353216
	.long	1049515387
	.long	1060340177
	.globl	THIRD_OCTAVE_BAND_29
	.align 32
	.type	THIRD_OCTAVE_BAND_29, @object
	.size	THIRD_OCTAVE_BAND_29, 96
THIRD_OCTAVE_BAND_29:
	.long	1046469454
	.long	0
	.long	-1101014194
	.long	1065353216
	.long	1057495315
	.long	1062292936
	.long	1046469454
	.long	0
	.long	-1101014194
	.long	1065353216
	.long	1067497174
	.long	1062945458
	.long	1045125023
	.long	0
	.long	-1102358625
	.long	1065353216
	.long	1064861025
	.long	1059514135
	.long	1045125023
	.long	0
	.long	-1102358625
	.long	1065353216
	.long	1060020320
	.long	1058944240
	.globl	THIRD_OCTAVE_BAND_30
	.align 32
	.type	THIRD_OCTAVE_BAND_30, @object
	.size	THIRD_OCTAVE_BAND_30, 96
THIRD_OCTAVE_BAND_30:
	.long	1049215685
	.long	0
	.long	-1098267963
	.long	1065353216
	.long	1067053476
	.long	1060529519
	.long	1049215685
	.long	0
	.long	-1098267963
	.long	1065353216
	.long	1072553080
	.long	1063728105
	.long	1047935511
	.long	0
	.long	-1099548137
	.long	1065353216
	.long	1070489492
	.long	1060037574
	.long	1047935511
	.long	0
	.long	-1099548137
	.long	1065353216
	.long	1067030057
	.long	1055539542
	.text
	.globl	timeweight_create
	.type	timeweight_create, @function
timeweight_create:
.LFB8:
	.file 2 "src/filter.c"
	.loc 2 34 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 35 19
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 36 15
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 2 37 12
	movq	-8(%rbp), %rax
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, 4(%rax)
	.loc 2 38 9
	movq	-8(%rbp), %rax
	.loc 2 39 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	timeweight_create, .-timeweight_create
	.globl	timeweightSlow_create
	.type	timeweightSlow_create, @function
timeweightSlow_create:
.LFB9:
	.loc 2 42 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 43 19
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 44 15
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 2 45 12
	movq	-8(%rbp), %rax
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, 4(%rax)
	.loc 2 46 9
	movq	-8(%rbp), %rax
	.loc 2 47 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	timeweightSlow_create, .-timeweightSlow_create
	.globl	timeweight_destroy
	.type	timeweight_destroy, @function
timeweight_destroy:
.LFB10:
	.loc 2 51 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 52 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 53 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	timeweight_destroy, .-timeweight_destroy
	.globl	timeweight_filtering
	.type	timeweight_filtering, @function
timeweight_filtering:
.LFB11:
	.loc 2 56 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
.LBB2:
	.loc 2 58 16
	movl	$0, -4(%rbp)
	.loc 2 58 2
	jmp	.L9
.L10:
	.loc 2 61 29
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm1
	.loc 2 61 41
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 61 38
	mulss	%xmm0, %xmm1
	.loc 2 61 56
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm3
	.loc 2 61 52
	movss	.LC6(%rip), %xmm0
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	.loc 2 61 69
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 2 61 65
	mulss	%xmm2, %xmm0
	.loc 2 61 19
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 61 46
	addss	%xmm1, %xmm0
	.loc 2 61 23
	movss	%xmm0, (%rax)
	.loc 2 61 19
	movss	(%rax), %xmm0
	.loc 2 61 16
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	.loc 2 58 31 discriminator 3
	addl	$1, -4(%rbp)
.L9:
	.loc 2 58 25 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L10
.LBE2:
	.loc 2 62 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	timeweight_filtering, .-timeweight_filtering
	.type	shift_right, @function
shift_right:
.LFB12:
	.loc 2 65 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 2 66 30
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	.loc 2 66 2
	leaq	0(,%rax,4), %rdx
	.loc 2 66 10
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	.loc 2 66 2
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	.loc 2 67 7
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 2 68 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	shift_right, .-shift_right
	.globl	aweighting_create
	.type	aweighting_create, @function
aweighting_create:
.LFB13:
	.loc 2 71 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 72 16
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 73 12
	movq	-8(%rbp), %rax
	leaq	A_WEIGHTED_taps(%rip), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 74 19
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 2 74 10
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	.loc 2 74 8 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 75 8
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 2 76 9
	movq	-8(%rbp), %rax
	.loc 2 77 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	aweighting_create, .-aweighting_create
	.globl	aweighting_destroy
	.type	aweighting_destroy, @function
aweighting_destroy:
.LFB14:
	.loc 2 80 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 81 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 81 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 82 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 83 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	aweighting_destroy, .-aweighting_destroy
	.type	biquad, @function
biquad:
.LFB15:
	.loc 2 103 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 2 105 14
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	.loc 2 105 21
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	.loc 2 105 18
	mulss	%xmm0, %xmm1
	.loc 2 105 11
	movss	-4(%rbp), %xmm0
	subss	%xmm1, %xmm0
	.loc 2 105 28
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm2
	.loc 2 105 35
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	.loc 2 105 32
	mulss	%xmm2, %xmm1
	.loc 2 105 25
	subss	%xmm1, %xmm0
	.loc 2 105 7
	movq	-16(%rbp), %rax
	movss	%xmm0, (%rax)
	.loc 2 107 10
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	.loc 2 107 17
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 2 107 14
	mulss	%xmm0, %xmm1
	.loc 2 107 24
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm2
	.loc 2 107 31
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	.loc 2 107 28
	mulss	%xmm2, %xmm0
	.loc 2 107 21
	addss	%xmm0, %xmm1
	.loc 2 107 38
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm2
	.loc 2 107 45
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	.loc 2 107 42
	mulss	%xmm2, %xmm0
	.loc 2 107 35
	addss	%xmm1, %xmm0
	.loc 2 108 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	biquad, .-biquad
	.type	cascade_biquad, @function
cascade_biquad:
.LFB16:
	.loc 2 111 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movss	%xmm0, -20(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -24(%rbp)
	.loc 2 112 8
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.LBB3:
	.loc 2 113 11
	movl	$0, -4(%rbp)
	.loc 2 113 2
	jmp	.L18
.L19:
	.loc 2 114 57
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	.loc 2 114 53
	leaq	0(,%rax,4), %rdx
	.loc 2 114 7
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	.loc 2 114 42
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	.loc 2 114 38
	cltq
	addq	$3, %rax
	leaq	0(,%rax,4), %rdx
	.loc 2 114 7
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 2 114 23
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 2 114 19
	leaq	0(,%rax,4), %rdx
	.loc 2 114 7
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	movq	%rdi, %rdx
	movq	%rcx, %rdi
	movd	%eax, %xmm0
	call	biquad
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	.loc 2 113 26 discriminator 3
	addl	$1, -4(%rbp)
.L18:
	.loc 2 113 20 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L19
.LBE3:
	.loc 2 115 9
	movss	-8(%rbp), %xmm0
	.loc 2 116 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	cascade_biquad, .-cascade_biquad
	.globl	aweighting_filtering
	.type	aweighting_filtering, @function
aweighting_filtering:
.LFB17:
	.loc 2 119 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
.LBB4:
	.loc 2 120 19
	movl	$0, -12(%rbp)
	.loc 2 120 5
	jmp	.L22
.L25:
.LBB5:
.LBB6:
	.loc 2 121 18
	movl	$0, -8(%rbp)
	.loc 2 121 9
	jmp	.L23
.L24:
	.loc 2 122 27
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 122 39
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 2 122 31
	salq	$2, %rax
	.loc 2 122 13
	addq	%rcx, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	shift_right
	.loc 2 121 49 discriminator 3
	addl	$1, -8(%rbp)
.L23:
	.loc 2 121 39 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 121 35 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L24
.LBE6:
	.loc 2 124 26
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 124 42
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rdi
	movq	-32(%rbp), %rax
	addq	%rdi, %rax
	.loc 2 124 26
	movl	(%rax), %eax
	movq	%rcx, %rdi
	movd	%eax, %xmm0
	call	cascade_biquad
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 2 125 10
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 125 14
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.LBE5:
	.loc 2 120 37 discriminator 2
	addl	$1, -12(%rbp)
.L22:
	.loc 2 120 28 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L25
.LBE4:
	.loc 2 128 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	aweighting_filtering, .-aweighting_filtering
	.globl	cweighting_create
	.type	cweighting_create, @function
cweighting_create:
.LFB18:
	.loc 2 131 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 132 16
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 133 12
	movq	-8(%rbp), %rax
	leaq	C_WEIGHTED_taps(%rip), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 134 19
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 2 134 10
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	.loc 2 134 8 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 135 8
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 2 136 9
	movq	-8(%rbp), %rax
	.loc 2 137 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	cweighting_create, .-cweighting_create
	.globl	cweighting_destroy
	.type	cweighting_destroy, @function
cweighting_destroy:
.LFB19:
	.loc 2 140 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 141 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 141 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 142 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 143 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	cweighting_destroy, .-cweighting_destroy
	.globl	cweighting_filtering
	.type	cweighting_filtering, @function
cweighting_filtering:
.LFB20:
	.loc 2 146 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
.LBB7:
	.loc 2 147 19
	movl	$0, -12(%rbp)
	.loc 2 147 5
	jmp	.L30
.L33:
.LBB8:
.LBB9:
	.loc 2 148 18
	movl	$0, -8(%rbp)
	.loc 2 148 9
	jmp	.L31
.L32:
	.loc 2 149 27
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 149 39
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 2 149 31
	salq	$2, %rax
	.loc 2 149 13
	addq	%rcx, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	shift_right
	.loc 2 148 49 discriminator 3
	addl	$1, -8(%rbp)
.L31:
	.loc 2 148 39 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 148 35 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L32
.LBE9:
	.loc 2 151 26
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 151 42
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rdi
	movq	-32(%rbp), %rax
	addq	%rdi, %rax
	.loc 2 151 26
	movl	(%rax), %eax
	movq	%rcx, %rdi
	movd	%eax, %xmm0
	call	cascade_biquad
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 2 152 10
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 152 14
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.LBE8:
	.loc 2 147 37 discriminator 2
	addl	$1, -12(%rbp)
.L30:
	.loc 2 147 28 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L33
.LBE7:
	.loc 2 155 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cweighting_filtering, .-cweighting_filtering
	.section	.data.rel.local,"aw"
	.align 32
	.type	bands, @object
	.size	bands, 240
bands:
	.quad	THIRD_OCTAVE_BAND_1
	.quad	THIRD_OCTAVE_BAND_2
	.quad	THIRD_OCTAVE_BAND_3
	.quad	THIRD_OCTAVE_BAND_4
	.quad	THIRD_OCTAVE_BAND_5
	.quad	THIRD_OCTAVE_BAND_6
	.quad	THIRD_OCTAVE_BAND_7
	.quad	THIRD_OCTAVE_BAND_8
	.quad	THIRD_OCTAVE_BAND_9
	.quad	THIRD_OCTAVE_BAND_10
	.quad	THIRD_OCTAVE_BAND_11
	.quad	THIRD_OCTAVE_BAND_12
	.quad	THIRD_OCTAVE_BAND_13
	.quad	THIRD_OCTAVE_BAND_14
	.quad	THIRD_OCTAVE_BAND_15
	.quad	THIRD_OCTAVE_BAND_16
	.quad	THIRD_OCTAVE_BAND_17
	.quad	THIRD_OCTAVE_BAND_18
	.quad	THIRD_OCTAVE_BAND_19
	.quad	THIRD_OCTAVE_BAND_20
	.quad	THIRD_OCTAVE_BAND_21
	.quad	THIRD_OCTAVE_BAND_22
	.quad	THIRD_OCTAVE_BAND_23
	.quad	THIRD_OCTAVE_BAND_24
	.quad	THIRD_OCTAVE_BAND_25
	.quad	THIRD_OCTAVE_BAND_26
	.quad	THIRD_OCTAVE_BAND_27
	.quad	THIRD_OCTAVE_BAND_28
	.quad	THIRD_OCTAVE_BAND_29
	.quad	THIRD_OCTAVE_BAND_30
	.local	TO_levels
	.comm	TO_levels,120,32
	.text
	.globl	get_level
	.type	get_level, @function
get_level:
.LFB21:
	.loc 2 194 30
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 195 18
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	TO_levels(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	.loc 2 196 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	get_level, .-get_level
	.globl	third_octave_create
	.type	third_octave_create, @function
third_octave_create:
.LFB22:
	.loc 2 199 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 200 15
	movl	$4, -12(%rbp)
	.loc 2 202 33
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 203 26
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bands(%rip), %rax
	movq	(%rdx,%rax), %rdx
	.loc 2 203 19
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 204 26
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	.loc 2 204 17
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	.loc 2 204 15 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 205 15
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 2 206 12
	movq	-8(%rbp), %rax
	.loc 2 207 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	third_octave_create, .-third_octave_create
	.globl	third_octave_destroy
	.type	third_octave_destroy, @function
third_octave_destroy:
.LFB23:
	.loc 2 209 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 210 8
	cmpq	$0, -8(%rbp)
	je	.L40
	.loc 2 211 20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 211 9
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 212 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L40:
	.loc 2 214 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	third_octave_destroy, .-third_octave_destroy
	.globl	third_octave_filtering
	.type	third_octave_filtering, @function
third_octave_filtering:
.LFB24:
	.loc 2 217 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
.LBB10:
	.loc 2 218 19
	movl	$0, -12(%rbp)
	.loc 2 218 5
	jmp	.L42
.L45:
.LBB11:
.LBB12:
	.loc 2 219 18
	movl	$0, -8(%rbp)
	.loc 2 219 9
	jmp	.L43
.L44:
	.loc 2 220 27
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 220 39
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	.loc 2 220 31
	salq	$2, %rax
	.loc 2 220 13
	addq	%rcx, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	shift_right
	.loc 2 219 49 discriminator 3
	addl	$1, -8(%rbp)
.L43:
	.loc 2 219 39 discriminator 1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 219 35 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L44
.LBE12:
	.loc 2 222 26
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 222 42
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rdi
	movq	-32(%rbp), %rax
	addq	%rdi, %rax
	.loc 2 222 26
	movl	(%rax), %eax
	movq	%rcx, %rdi
	movd	%eax, %xmm0
	call	cascade_biquad
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	.loc 2 223 10
	movl	-12(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 223 14
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.LBE11:
	.loc 2 218 37 discriminator 2
	addl	$1, -12(%rbp)
.L42:
	.loc 2 218 28 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L45
.LBE10:
	.loc 2 225 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	third_octave_filtering, .-third_octave_filtering
	.globl	third_octave_levels
	.type	third_octave_levels, @function
third_octave_levels:
.LFB25:
	.loc 2 229 52
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 2 230 11
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 2 231 13
	movl	-20(%rbp), %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
.LBB13:
	.loc 2 233 11
	movl	$0, -32(%rbp)
	.loc 2 233 2
	jmp	.L47
.L52:
.LBB14:
	.loc 2 234 31
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	third_octave_create
	movq	%rax, -8(%rbp)
	.loc 2 235 3
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	third_octave_filtering
	.loc 2 236 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	third_octave_destroy
	.loc 2 237 9
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
.LBB15:
	.loc 2 238 11
	movl	$0, -24(%rbp)
	.loc 2 238 3
	jmp	.L48
.L49:
	.loc 2 239 19
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	.loc 2 239 26
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 2 239 23
	mulss	%xmm1, %xmm0
	.loc 2 239 15
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	.loc 2 238 29 discriminator 3
	addl	$1, -24(%rbp)
.L48:
	.loc 2 238 20 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L49
.LBE15:
	.loc 2 240 17
	movl	-44(%rbp), %eax
	testq	%rax, %rax
	js	.L50
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L51
.L50:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L51:
	movss	-28(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movd	%eax, %xmm0
	call	linear_to_decibel
	movd	%xmm0, %eax
	.loc 2 240 15 discriminator 1
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	TO_levels(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.LBE14:
	.loc 2 233 27 discriminator 2
	addl	$1, -32(%rbp)
.L47:
	.loc 2 233 20 discriminator 1
	cmpl	$29, -32(%rbp)
	jle	.L52
.LBE13:
	.loc 2 242 2
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 243 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	third_octave_levels, .-third_octave_levels
	.section	.rodata
	.align 8
.LC0:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC1:
	.long	-2147483648
	.long	1056241845
	.align 8
.LC2:
	.long	0
	.long	1077149696
	.align 4
.LC4:
	.long	965649635
	.align 4
.LC5:
	.long	940484910
	.align 4
.LC6:
	.long	1065353216
	.text
.Letext0:
	.file 3 "src/filter.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "src/FilterCoefs_48000.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcc5
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x10
	.long	.LASF18
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	0x41
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x19
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xb
	.long	0x93
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0xc
	.long	0x94
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF14
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF15
	.uleb128 0xb
	.long	0x94
	.uleb128 0x12
	.byte	0x8
	.byte	0x24
	.long	0xda
	.uleb128 0x11
	.long	.LASF16
	.byte	0x25
	.byte	0x8
	.long	0x94
	.byte	0
	.uleb128 0x11
	.long	.LASF17
	.byte	0x26
	.byte	0x8
	.long	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF19
	.byte	0x3
	.byte	0x27
	.byte	0x3
	.long	0xba
	.uleb128 0x12
	.byte	0x18
	.byte	0x31
	.long	0x10e
	.uleb128 0xd
	.string	"u"
	.byte	0x32
	.byte	0x9
	.long	0xb5
	.byte	0
	.uleb128 0xd
	.string	"N"
	.byte	0x35
	.byte	0x6
	.long	0x41
	.byte	0x8
	.uleb128 0x11
	.long	.LASF20
	.byte	0x36
	.byte	0xf
	.long	0x10e
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x9b
	.uleb128 0x10
	.long	.LASF21
	.byte	0x3
	.byte	0x37
	.byte	0x3
	.long	0xe6
	.uleb128 0x12
	.byte	0x18
	.byte	0x42
	.long	0x147
	.uleb128 0xd
	.string	"u"
	.byte	0x43
	.byte	0x9
	.long	0xb5
	.byte	0
	.uleb128 0xd
	.string	"N"
	.byte	0x46
	.byte	0x6
	.long	0x41
	.byte	0x8
	.uleb128 0x11
	.long	.LASF20
	.byte	0x47
	.byte	0xf
	.long	0x10e
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x3
	.byte	0x48
	.byte	0x3
	.long	0x11f
	.uleb128 0x12
	.byte	0x18
	.byte	0x4e
	.long	0x17b
	.uleb128 0xd
	.string	"u"
	.byte	0x4f
	.byte	0xc
	.long	0xb5
	.byte	0
	.uleb128 0xd
	.string	"N"
	.byte	0x50
	.byte	0x9
	.long	0x41
	.byte	0x8
	.uleb128 0x11
	.long	.LASF20
	.byte	0x51
	.byte	0x12
	.long	0x10e
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF23
	.byte	0x3
	.byte	0x52
	.byte	0x3
	.long	0x153
	.uleb128 0xb
	.long	0x17b
	.uleb128 0xe
	.long	0x9b
	.long	0x19c
	.uleb128 0xf
	.long	0x3a
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x18c
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x15
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	A_WEIGHTED_taps
	.uleb128 0xe
	.long	0x9b
	.long	0x1c7
	.uleb128 0xf
	.long	0x3a
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x1b7
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x1c
	.byte	0x14
	.long	0x1c7
	.uleb128 0x9
	.byte	0x3
	.quad	C_WEIGHTED_taps
	.uleb128 0xe
	.long	0x9b
	.long	0x1f2
	.uleb128 0xf
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x1e2
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x2a
	.byte	0x14
	.long	0x1f2
	.uleb128 0x9
	.byte	0x3
	.quad	TWSL_FAST_taps
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x2b
	.byte	0x14
	.long	0x1f2
	.uleb128 0x9
	.byte	0x3
	.quad	TWSL_SLOW_taps
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x32
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_1
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x39
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_2
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x40
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_3
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x47
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_4
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_5
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x55
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_6
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x5c
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_7
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x63
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_8
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x6a
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_9
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x71
	.byte	0x14
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	OCTAVE_BAND_10
	.uleb128 0xe
	.long	0x9b
	.long	0x30f
	.uleb128 0xf
	.long	0x3a
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.long	0x2ff
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x7d
	.byte	0x14
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_1
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x85
	.byte	0x14
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_2
	.uleb128 0x3
	.long	.LASF40
	.byte	0x8d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_3
	.uleb128 0x3
	.long	.LASF41
	.byte	0x95
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_4
	.uleb128 0x3
	.long	.LASF42
	.byte	0x9d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_5
	.uleb128 0x3
	.long	.LASF43
	.byte	0xa5
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_6
	.uleb128 0x3
	.long	.LASF44
	.byte	0xad
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_7
	.uleb128 0x3
	.long	.LASF45
	.byte	0xb5
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_8
	.uleb128 0x3
	.long	.LASF46
	.byte	0xbd
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_9
	.uleb128 0x3
	.long	.LASF47
	.byte	0xc5
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_10
	.uleb128 0x3
	.long	.LASF48
	.byte	0xcd
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_11
	.uleb128 0x3
	.long	.LASF49
	.byte	0xd5
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_12
	.uleb128 0x3
	.long	.LASF50
	.byte	0xdd
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_13
	.uleb128 0x3
	.long	.LASF51
	.byte	0xe5
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_14
	.uleb128 0x3
	.long	.LASF52
	.byte	0xed
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_15
	.uleb128 0x3
	.long	.LASF53
	.byte	0xf5
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_16
	.uleb128 0x3
	.long	.LASF54
	.byte	0xfd
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_17
	.uleb128 0x6
	.long	.LASF55
	.value	0x105
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_18
	.uleb128 0x6
	.long	.LASF56
	.value	0x10d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_19
	.uleb128 0x6
	.long	.LASF57
	.value	0x115
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_20
	.uleb128 0x6
	.long	.LASF58
	.value	0x11d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_21
	.uleb128 0x6
	.long	.LASF59
	.value	0x125
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_22
	.uleb128 0x6
	.long	.LASF60
	.value	0x12d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_23
	.uleb128 0x6
	.long	.LASF61
	.value	0x135
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_24
	.uleb128 0x6
	.long	.LASF62
	.value	0x13d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_25
	.uleb128 0x6
	.long	.LASF63
	.value	0x145
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_26
	.uleb128 0x6
	.long	.LASF64
	.value	0x14d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_27
	.uleb128 0x6
	.long	.LASF65
	.value	0x155
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_28
	.uleb128 0x6
	.long	.LASF66
	.value	0x15d
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_29
	.uleb128 0x6
	.long	.LASF67
	.value	0x165
	.long	0x30f
	.uleb128 0x9
	.byte	0x3
	.quad	THIRD_OCTAVE_BAND_30
	.uleb128 0xe
	.long	0x10e
	.long	0x58d
	.uleb128 0xf
	.long	0x3a
	.byte	0x1d
	.byte	0
	.uleb128 0x1
	.long	.LASF68
	.byte	0x2
	.byte	0x9e
	.byte	0x15
	.long	0x57d
	.uleb128 0x9
	.byte	0x3
	.quad	bands
	.uleb128 0xe
	.long	0x94
	.long	0x5b3
	.uleb128 0xf
	.long	0x3a
	.byte	0x1d
	.byte	0
	.uleb128 0x1
	.long	.LASF69
	.byte	0x2
	.byte	0xc0
	.byte	0xe
	.long	0x5a3
	.uleb128 0x9
	.byte	0x3
	.quad	TO_levels
	.uleb128 0x14
	.long	.LASF70
	.byte	0x6
	.byte	0x6b
	.byte	0x10
	.long	0xa0
	.long	0x5df
	.uleb128 0x9
	.long	0xa0
	.byte	0
	.uleb128 0x15
	.long	.LASF71
	.value	0x2a3
	.long	0x7e
	.long	0x5f9
	.uleb128 0x9
	.long	0x2e
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0x14
	.long	.LASF72
	.byte	0x8
	.byte	0x2f
	.byte	0xe
	.long	0x7e
	.long	0x619
	.uleb128 0x9
	.long	0x7e
	.uleb128 0x9
	.long	0x8e
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x7
	.value	0x2af
	.byte	0xd
	.long	0x62c
	.uleb128 0x9
	.long	0x7e
	.byte	0
	.uleb128 0x15
	.long	.LASF73
	.value	0x2a0
	.long	0x7e
	.long	0x641
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe5
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x700
	.uleb128 0x2
	.string	"x"
	.byte	0xe5
	.byte	0x20
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0xe5
	.byte	0x2e
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.long	.LASF75
	.byte	0x2
	.byte	0xe6
	.byte	0xb
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"y"
	.byte	0xe7
	.byte	0x9
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x7
	.string	"i"
	.byte	0xe9
	.byte	0xb
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1
	.long	.LASF76
	.byte	0x2
	.byte	0xea
	.byte	0x16
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.long	.LASF77
	.byte	0x2
	.byte	0xed
	.byte	0x9
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x7
	.string	"c"
	.byte	0xee
	.byte	0xb
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd8
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b1
	.uleb128 0x2
	.string	"of"
	.byte	0xd8
	.byte	0x30
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"x"
	.byte	0xd8
	.byte	0x3a
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"y"
	.byte	0xd8
	.byte	0x45
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0xd8
	.byte	0x53
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x7
	.string	"n"
	.byte	0xda
	.byte	0x13
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1
	.long	.LASF80
	.byte	0x2
	.byte	0xde
	.byte	0xf
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1
	.long	.LASF81
	.byte	0x2
	.byte	0xdb
	.byte	0x12
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF82
	.byte	0xd1
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x7dd
	.uleb128 0x8
	.long	.LASF76
	.byte	0x2
	.byte	0xd1
	.byte	0x2e
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF85
	.byte	0xc7
	.byte	0x14
	.long	0x187
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x82c
	.uleb128 0x8
	.long	.LASF83
	.byte	0x2
	.byte	0xc7
	.byte	0x2c
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.long	.LASF84
	.byte	0x2
	.byte	0xc8
	.byte	0xf
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.long	.LASF76
	.byte	0x2
	.byte	0xca
	.byte	0x18
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x2
	.byte	0xc2
	.byte	0x7
	.long	0x94
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x85e
	.uleb128 0x8
	.long	.LASF83
	.byte	0x2
	.byte	0xc2
	.byte	0x15
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0x91
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x90f
	.uleb128 0x2
	.string	"cf"
	.byte	0x91
	.byte	0x24
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"x"
	.byte	0x91
	.byte	0x2e
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"y"
	.byte	0x91
	.byte	0x39
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0x91
	.byte	0x47
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x7
	.string	"n"
	.byte	0x93
	.byte	0x13
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1
	.long	.LASF80
	.byte	0x2
	.byte	0x97
	.byte	0xf
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1
	.long	.LASF81
	.byte	0x2
	.byte	0x94
	.byte	0x12
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x147
	.uleb128 0xa
	.long	.LASF88
	.byte	0x8b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x93e
	.uleb128 0x2
	.string	"cf"
	.byte	0x8b
	.byte	0x22
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF89
	.byte	0x82
	.byte	0xa
	.long	0x90f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x979
	.uleb128 0x2
	.string	"N"
	.byte	0x82
	.byte	0x20
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"cf"
	.byte	0x84
	.byte	0xb
	.long	0x90f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x76
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2a
	.uleb128 0x2
	.string	"af"
	.byte	0x76
	.byte	0x24
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"x"
	.byte	0x76
	.byte	0x2e
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"y"
	.byte	0x76
	.byte	0x39
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0x76
	.byte	0x47
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x7
	.string	"n"
	.byte	0x78
	.byte	0x13
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1
	.long	.LASF80
	.byte	0x2
	.byte	0x7c
	.byte	0xf
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1
	.long	.LASF81
	.byte	0x2
	.byte	0x79
	.byte	0x12
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x113
	.uleb128 0x1d
	.long	.LASF91
	.byte	0x2
	.byte	0x6e
	.byte	0xe
	.long	0x94
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xaaf
	.uleb128 0x2
	.string	"x"
	.byte	0x6e
	.byte	0x23
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"u"
	.byte	0x6e
	.byte	0x2d
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF20
	.byte	0x2
	.byte	0x6e
	.byte	0x3d
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"N"
	.byte	0x6e
	.byte	0x48
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"y"
	.byte	0x70
	.byte	0x8
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x7
	.string	"i"
	.byte	0x71
	.byte	0xb
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x2
	.byte	0x66
	.byte	0xe
	.long	0x94
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb02
	.uleb128 0x2
	.string	"x"
	.byte	0x66
	.byte	0x1b
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"u"
	.byte	0x66
	.byte	0x25
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"a"
	.byte	0x66
	.byte	0x35
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"b"
	.byte	0x66
	.byte	0x45
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xa
	.long	.LASF93
	.byte	0x4f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb2c
	.uleb128 0x2
	.string	"af"
	.byte	0x4f
	.byte	0x22
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF94
	.byte	0x46
	.byte	0xa
	.long	0xa2a
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xb67
	.uleb128 0x2
	.string	"N"
	.byte	0x46
	.byte	0x20
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"af"
	.byte	0x48
	.byte	0xb
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF99
	.byte	0x2
	.byte	0x40
	.byte	0xd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xba1
	.uleb128 0x2
	.string	"u"
	.byte	0x40
	.byte	0x1f
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.byte	0x40
	.byte	0x28
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.long	.LASF95
	.byte	0x2
	.byte	0x37
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0f
	.uleb128 0x2
	.string	"tw"
	.byte	0x37
	.byte	0x27
	.long	0xc0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"x"
	.byte	0x37
	.byte	0x32
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"y"
	.byte	0x37
	.byte	0x3c
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"n"
	.byte	0x37
	.byte	0x48
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.string	"i"
	.byte	0x3a
	.byte	0x10
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xda
	.uleb128 0xa
	.long	.LASF96
	.byte	0x32
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc3e
	.uleb128 0x2
	.string	"tw"
	.byte	0x32
	.byte	0x25
	.long	0xc0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF97
	.byte	0x29
	.long	0xc0f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6c
	.uleb128 0x7
	.string	"tw"
	.byte	0x2b
	.byte	0xe
	.long	0xc0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF98
	.byte	0x21
	.long	0xc0f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9a
	.uleb128 0x7
	.string	"tw"
	.byte	0x23
	.byte	0xe
	.long	0xc0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF100
	.byte	0x1
	.byte	0x28
	.byte	0x15
	.long	0x94
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF101
	.byte	0x1
	.byte	0x28
	.byte	0x2d
	.long	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"linear_to_decibel"
.LASF67:
	.string	"THIRD_OCTAVE_BAND_30"
.LASF38:
	.string	"THIRD_OCTAVE_BAND_1"
.LASF39:
	.string	"THIRD_OCTAVE_BAND_2"
.LASF40:
	.string	"THIRD_OCTAVE_BAND_3"
.LASF101:
	.string	"linear"
.LASF42:
	.string	"THIRD_OCTAVE_BAND_5"
.LASF78:
	.string	"third_octave_levels"
.LASF44:
	.string	"THIRD_OCTAVE_BAND_7"
.LASF45:
	.string	"THIRD_OCTAVE_BAND_8"
.LASF46:
	.string	"THIRD_OCTAVE_BAND_9"
.LASF94:
	.string	"aweighting_create"
.LASF9:
	.string	"short int"
.LASF18:
	.string	"size_t"
.LASF73:
	.string	"malloc"
.LASF84:
	.string	"biquad_stages"
.LASF19:
	.string	"Timeweight"
.LASF92:
	.string	"biquad"
.LASF70:
	.string	"log10"
.LASF20:
	.string	"coefs"
.LASF23:
	.string	"ThirdOctaveFilter"
.LASF16:
	.string	"previous"
.LASF103:
	.string	"free"
.LASF77:
	.string	"sample_sum"
.LASF8:
	.string	"signed char"
.LASF12:
	.string	"float"
.LASF4:
	.string	"long long int"
.LASF11:
	.string	"long long unsigned int"
.LASF10:
	.string	"char"
.LASF17:
	.string	"alpha"
.LASF86:
	.string	"get_level"
.LASF3:
	.string	"long int"
.LASF21:
	.string	"Afilter"
.LASF91:
	.string	"cascade_biquad"
.LASF74:
	.string	"size"
.LASF102:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF98:
	.string	"timeweight_create"
.LASF15:
	.string	"long double"
.LASF22:
	.string	"Cfilter"
.LASF72:
	.string	"memmove"
.LASF5:
	.string	"unsigned char"
.LASF24:
	.string	"A_WEIGHTED_taps"
.LASF93:
	.string	"aweighting_destroy"
.LASF25:
	.string	"C_WEIGHTED_taps"
.LASF47:
	.string	"THIRD_OCTAVE_BAND_10"
.LASF48:
	.string	"THIRD_OCTAVE_BAND_11"
.LASF49:
	.string	"THIRD_OCTAVE_BAND_12"
.LASF50:
	.string	"THIRD_OCTAVE_BAND_13"
.LASF51:
	.string	"THIRD_OCTAVE_BAND_14"
.LASF52:
	.string	"THIRD_OCTAVE_BAND_15"
.LASF53:
	.string	"THIRD_OCTAVE_BAND_16"
.LASF54:
	.string	"THIRD_OCTAVE_BAND_17"
.LASF55:
	.string	"THIRD_OCTAVE_BAND_18"
.LASF56:
	.string	"THIRD_OCTAVE_BAND_19"
.LASF87:
	.string	"cweighting_filtering"
.LASF14:
	.string	"_Bool"
.LASF81:
	.string	"stage"
.LASF28:
	.string	"OCTAVE_BAND_1"
.LASF29:
	.string	"OCTAVE_BAND_2"
.LASF30:
	.string	"OCTAVE_BAND_3"
.LASF31:
	.string	"OCTAVE_BAND_4"
.LASF32:
	.string	"OCTAVE_BAND_5"
.LASF33:
	.string	"OCTAVE_BAND_6"
.LASF34:
	.string	"OCTAVE_BAND_7"
.LASF35:
	.string	"OCTAVE_BAND_8"
.LASF36:
	.string	"OCTAVE_BAND_9"
.LASF6:
	.string	"short unsigned int"
.LASF71:
	.string	"calloc"
.LASF89:
	.string	"cweighting_create"
.LASF79:
	.string	"third_octave_filtering"
.LASF69:
	.string	"TO_levels"
.LASF90:
	.string	"aweighting_filtering"
.LASF2:
	.string	"long unsigned int"
.LASF75:
	.string	"length_read"
.LASF13:
	.string	"double"
.LASF57:
	.string	"THIRD_OCTAVE_BAND_20"
.LASF58:
	.string	"THIRD_OCTAVE_BAND_21"
.LASF59:
	.string	"THIRD_OCTAVE_BAND_22"
.LASF60:
	.string	"THIRD_OCTAVE_BAND_23"
.LASF61:
	.string	"THIRD_OCTAVE_BAND_24"
.LASF62:
	.string	"THIRD_OCTAVE_BAND_25"
.LASF63:
	.string	"THIRD_OCTAVE_BAND_26"
.LASF64:
	.string	"THIRD_OCTAVE_BAND_27"
.LASF65:
	.string	"THIRD_OCTAVE_BAND_28"
.LASF66:
	.string	"THIRD_OCTAVE_BAND_29"
.LASF26:
	.string	"TWSL_FAST_taps"
.LASF85:
	.string	"third_octave_create"
.LASF97:
	.string	"timeweightSlow_create"
.LASF37:
	.string	"OCTAVE_BAND_10"
.LASF27:
	.string	"TWSL_SLOW_taps"
.LASF96:
	.string	"timeweight_destroy"
.LASF88:
	.string	"cweighting_destroy"
.LASF99:
	.string	"shift_right"
.LASF76:
	.string	"filter"
.LASF7:
	.string	"unsigned int"
.LASF82:
	.string	"third_octave_destroy"
.LASF83:
	.string	"band_idx"
.LASF41:
	.string	"THIRD_OCTAVE_BAND_4"
.LASF68:
	.string	"bands"
.LASF95:
	.string	"timeweight_filtering"
.LASF80:
	.string	"filtered"
.LASF43:
	.string	"THIRD_OCTAVE_BAND_6"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/filter.c"
.LASF1:
	.string	"/home/aluno/Desktop/sound_meter-master_v03"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
