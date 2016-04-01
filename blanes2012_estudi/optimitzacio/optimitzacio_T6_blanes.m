clc,clear,close all
dades=[
	%pc fix			exces
	200	10412.11869	5894.854999
	202	10503.05622	5668.063643
	204	10593.99374	5447.439705
	206	10684.93127	5233.074051
	208	10775.86879	5024.876195
	210	10866.80632	4822.887516
	212	10957.74384	4626.908784
	214	11048.68137	4436.974704
	216	11139.61889	4252.949393
	218	11230.55641	4077.21842
	220	11321.49394	3906.691296
	222	11412.43146	3742.868157
	224	11503.36899	3583.74093
	226	11594.30651	3432.191487
	228	11685.24404	3285.228136
	230	11776.18156	3142.748447
	232	11867.11909	3004.300197
	234	11958.05661	2869.955462
	236	12048.99414	2739.764901
	238	12139.93166	2616.323404
	240	12230.86918	2496.795277
	242	12321.80671	2381.268645
	244	12412.74423	2269.244518
	246	12503.68176	2162.383179
	248	12594.61928	2059.222555
	250	12685.55681	1960.949125
	252	12776.49433	1866.600106
	254	12867.43186	1776.137473
	256	12958.36938	1689.123141
	258	13049.3069	1606.342485
	260	13140.24443	1526.209546
	262	13231.18195	1449.001688
	264	13322.11948	1374.956214
	266	13413.057	1306.290344
	268	13503.99453	1239.643121
	270	13594.93205	1181.517882
	272	13685.86958	1124.925819
	274	13776.8071	1072.624006
	276	13867.74463	1021.667176
	278	13958.68215	972.1626581
	280	14049.61967	923.8558641
	282	14140.5572	877.8048934
	284	14231.49472	832.989907
	286	14322.43225	793.3387268
	288	14413.36977	754.7749177
	290	14504.3073	717.2146087
	292	14595.24482	680.5234766
	294	14686.18235	644.7372505
	296	14777.11987	609.8955149
	298	14868.05739	576.0595383
	300	14958.99492	543.2989569
	302	15049.93244	511.5847249
	304	15140.86997	480.8690195
	306	15231.80749	451.1846133
	308	15322.74502	422.5675001
	310	15413.68254	396.4048067
	312	15504.62007	371.2509723
	314	15595.55759	347.0679689
	316	15686.49512	323.7982716
	318	15777.43264	301.4266779
	320	15868.37016	279.9129071
	322	15959.30769	259.2796111
	324	16050.24521	239.5578803
	326	16141.18274	220.7098902
	328	16232.12026	202.6573125
	330	16323.05779	185.3336108
	332	16413.99531	168.5901671
	334	16504.93284	152.5115651
	336	16595.87036	137.5354554
	338	16686.80788	123.8129566
	340	16777.74541	110.3477091
	342	16868.68293	99.13762832
	344	16959.62046	88.20648378
	346	17050.55798	77.62121678
	348	17141.49551	67.48608
	350	17232.43303	57.90097661
	352	17323.37056	49.02750047
	354	17414.30808	40.84549733
	356	17505.24561	33.27108613
	358	17596.18313	26.22784371
	360	17687.12065	19.48155323
	362	17778.05818	13.18907388
	364	17868.9957	7.953310801
	366	17959.93323	3.9766554
	368	18050.87075	0
	370	18141.80828	0
	372	18232.7458	0
	374	18323.68333	0
	376	18414.62085	0
	378	18505.55837	0
	380	18596.4959	0
];

pot = dades(:,1);
fix = dades(:,2);
exc = dades(:,3);

figure, grid, hold on
	% barres: bar(x,y,color)
	bar(pot,fix+exc, 'r');
	bar(pot,fix, 	 'b');

	% llegenda
	legend('penalitzacions','terme fix')

	% eixos
	set(gca,'XTick',200:10:380);
	ylim([0.8e4 2e4]);
	xlim([195 385]);
	xlabel('Potencia contractada P1-P5 (kW)');
	ylabel('Cost Terme Potencia (K eur)');

figure, grid, hold on
	% barres: bar(x,y,color)
	bar(pot,exc, 'r');

	% llegenda
	legend('penalitzacions')

	% eixos
	set(gca,'XTick',200:10:380);
	%ylim([0.8e4 2e4]);
	xlim([195 385]);
	xlabel('Potencia contractada P1-P5 (kW)');
	ylabel('Penalitzacio (K eur)');
