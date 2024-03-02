#!/bin/sh

# NOTE: becomes em_ui.sh

PLATFORM="m17"
SDCARD_PATH="/sdcard"
UPDATE_PATH="$SDCARD_PATH/MinUI.zip"
SYSTEM_PATH="$SDCARD_PATH/.system"

# install/update
if [ -f "$UPDATE_PATH" ]; then 
	if [ ! -d $SYSTEM_PATH ]; then
		ACTION=installing
	else
		ACTION=updating
	fi

	# initialize fb0
	cat /sys/class/graphics/fb0/modes > /sys/class/graphics/fb0/mode

	# extract the zip file appended to the end of this script to tmp
	CUT=$((`grep -n '^BINARY' $0 | cut -d ':' -f 1 | tail -1` + 1))
	tail -n +$CUT "$0" | uudecode -o /tmp/data
	
	# unzip and display one of the two images it contains 
	unzip -o /tmp/data -d /tmp
	dd if=/tmp/$ACTION of=/dev/fb0
	sync
	
	# finally unzip MinUI.zip
	unzip -o "$UPDATE_PATH" -d "$SDCARD_PATH"
	rm -f "$UPDATE_PATH"
	sync
	
	# the updated system finishes the install/update
	$SYSTEM_PATH/$PLATFORM/bin/install.sh # &> $SDCARD_PATH/install.txt
	dd if=/dev/zero of=/dev/fb0
fi

LAUNCH_PATH="$SYSTEM_PATH/$PLATFORM/paks/MinUI.pak/launch.sh"
while [ -f "$LAUNCH_PATH" ] ; do
	taskset 8 "$LAUNCH_PATH"
done

poweroff # under no circumstances should stock be allowed to touch this card

exit 0

BINARY
begin 644 data
M4$L#!!0````(`/=-;%<>XN2)@`P```+X!P`*`!P`:6YS=&%L;&EN9U54"0`#
MD>5098SE4&5U>`L``00`````!`````#MW0VT5F.^`/"G0B%?5Q^4%I?5R6=*
MWRFI3DKJ2!^7$:52QBK1IS59E)JHW'*7Q90UQ5U#EKE&K`B55(<I74+$,.&.
MY6,8RU==:QK"G><Y\^[W?77.J>LBE]^OM==Y_\_S[/WNO=_6^S_[>9Z]3P@`
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M`````````````,!/P0$''+"G=R$S^K+18=P5XT*M6K52?-SQQX5ITZ:%-JW:
MI/CDYB>G^*3F)WTO^U/=N:FL;L*X">'RL9?_K]^G[@%U=_M]?DB?%P#?3%F_
MLK!UZ];PY/HGPUZU]MJC^]*U6]?PU5=?I:6T1VDJ6UN^-L5KUZY-\;OOOIOB
M]]Y_+]2H6>,[W9_K9UV?SLW#CSP<:M>N750W;]Z\5'?O/?>&FC5KIK+XNT-N
M_T>.&KE;[['//ON$U:M7AT^V?A(&#ARX4_UMBVY+[S/SNIDI[GU6[Q_,YP7`
M-W?CC3=F.:-UJ];?VG8O'7UIN'+RE:'V/K5WW?@?+KCP@FQ?RLXN2V6;GM]4
MD7_+*_+O"YM?2/'+K[S\G>;?^O7K9_L2ER%#AV1UK=NT+JKKU;M7*A\^8GA6
M=L&0"W;K?3JT[Y"MLV+YBJ*ZFK5JAFV?;DMUK[_^>BJ;/F/Z=_)Y`?#]NO;:
M:[/O\S-ZG%%IF^KR7.P+C4N-&ODVC1LWSK;9LV?/W=Z7`0,'9.N=V?O,5+9N
M_;H4/[GAR13OO??>8=A%P\*^=?;=[>T6*NSGW6NOJJ\?SSKKK*(<^]###V5U
M,V;,**J[;.QE65WW[MU#E].Z5+G=KY_+KJ?GK_D??.#!HKJ8?U_[K]=2W;HG
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
M)TV<E);<,ZWJ[E<W7=]=-B;_G*?CCCLN7#/UFK!TZ=)P]]UWARLNOR*-9>;$
M9U',G#DSY<#X7(XHYIGX_*:8:^;^Z]S0\+"&J>_ZU@6WAD,/K7@>Q?CQX\,U
M5U^3GM41Y?[>0NY93RU.;E'Q]QC:5/P]AMB'&^/<O+"H>[?NJ>SX$XKG99?U
M+4O7V0T:-`AC1H^IN/[=MC74KE/\C,QCCCDFK=^S5_&SN^(Z\3@+Q3'8V/:H
M?SXJQ1,G3$S'F'LF].Z<RYQ^_?J%FV^^.:QX9$5ZALGTZ=-W.H:O?UZU:M8*
M4Z9,"6,OJYA;5K-&S6IC`/B^G-KIU+!J]:J4V^O5JY?ZAM]Y^YV4?Y>O6+ZG
M=P\`?I06+5I49=]NG.L,`'S[XCRDS2]L+LJ[.[[8$49?.GI/[QH`_.CU[=LW
M/;\B/ONRI*1D3^\.````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M``````````````````````````````#`=^1_`%!+`P04````"`#Z36Q7CD#E
M!U@,```"^`<`"``<`'5P9&%T:6YG550)``.7Y5!ED>50975X"P`!!``````$
M`````.W="]264[X`\-W%)2K6&2*Z",MIJ,C0Z%3CE%G#6)-#A6(X4C&643.5
M4`Q2)*=S.JFC7&:-2^:,2[JXE5)]4J,4H56Z?(F$DG119.*<O=_U/M_WJH\W
MF<GE]VN]Z_OV?^]GO[OW:3W_]]G/?IY"````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
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
M-\8I4Z:D\N+%BU-YXL2)18\OGO]'RY8M^\I],'+4R-0VWM^4S[_CQXU/L08-
M&H0>/7J$`P\X,)7/__7YX:QV9V7O]\4R`+M?WVOZ%N25>#ZX]=.M!;&CCCHJ
MM8WG6^7C\^;.*_O]I=SUS5H'ULIBL9_9LV<7;'/1OU]4D'^G3YL>^O7M%UY;
M\%H6NZG_3:FO>/TV'YL\>7)H>FS3\-3$IPKFQ)][_KF"]X_>6I6[OIJ_/_;F
M@3=G_<1\NN:]-5EY1_DWWN.\Z:--J7["XQ-2;+_]]PN???Y9MMWQ/SD^Q4?=
M.2J5XSU(#0YO$)Y\ZLFBQQ?7@$<]?]?S*_=!HT:-4MO]]]\_6Y>=O[[]QINY
M9Y(\]-!#H=LEW;)MXK6!7Y[^RZS<L6/A/5D`[#Z5_O_/8V,>JW`N^++?7):U
MS<\'O[[H]8(V:]Y?DW)J7IQC+E\?K_UNVK2I(+?.F#&CH,VV;=O")Q_GYF'[
M79N[1ZG\&N3XBM>%[[CCCH+SR9*2DE2>,V=.]O[OO/M.+G>.S^7./?;8(Y1,
M+2GH*]Z#F[XC;-V:SC?+JU&]1M:N5^^R.>O\&NUXOIIW<9>+L[9-FC3)UEKO
MS/BB8O=!//_-QP?=,BC%XF<7R_&97#U[E>7RDYJ?%,XZZZRLW+E+YYWZMP'`
MWU]\IL3PX</#I*<GA3&/CDGKI(X^YNB"-OG\VZ-[C]"R5<LP?OSX<-===X5Z
M]>MMU]^Y'<_-ZFL?4CMT[=HU72,]X2<GI/J]]MPK72N.>6?(?PP)!QU\4#CW
M['/#J)&CTCQVWAG_=D:Z[AQ?L4V#PQJD9WB<>.*)J;YITZ:I?'S3X[-MXC.E
M8NR+XS^C[1FA2Y<NZ5D9O[W\M[GSWXT;PEY[[[7=^#M?W#GU4?[<.,X#Q-B/
MC_YQ%HO/N;KNNNO");^Y))4;-VK\M<=7S#Z(SC[G[+1]_G./S_"(Y2./.#*5
M^_;MF_Z_BR@^"Z5\&8#OGGB],>:LF&^^2UJT;!&F3)T2>O;L&0XXX(#0K%FS
ML.KM5=DY(P!\FY5,S\VE#ATZ='</9:?<<\\]%<[MYI];!0#?5A?^^L)T'^II
MIYZVNX>R4^(ZI-=>?:T@[_YMV]_"Y9==OKN'!@#?>_$>HO@\S/B\R_R:;@``
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````````````````````````````````````````````````````
M````````````@.^?_P-02P$"'@,4````"`#W36Q7'N+DB8`,```"^`<`"@`8
M````````````I($`````:6YS=&%L;&EN9U54!0`#D>50975X"P`!!``````$
M`````%!+`0(>`Q0````(`/I-;%>.0.4'6`P```+X!P`(`!@```````````"D
M@<0,``!U<&1A=&EN9U54!0`#E^50975X"P`!!``````$`````%!+!08`````
.`@`"`)X```!>&0``````
`
end
