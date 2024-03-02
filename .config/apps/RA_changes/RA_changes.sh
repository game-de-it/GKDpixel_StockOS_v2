#!/bin/sh

LASTSELECT="/media/roms/.config/apps/RA_changes/last"
SEL1="off"
SEL2="off"
SEL3="off"
CORE="$2"
ROM="$1"

retroarch_cmd() {
	export GL_SYNC_TO_VBLANK=1
	/media/roms/retroarch/retroarch_full.sh  "${ROM}" ${CORE}
}

picoarch_cmd() {
	/media/roms/picoarch/picoarch.sh "${ROM}" ${CORE}
}

minira_cmd() {
	/media/roms/minira/retrorun32 -d /media/roms/minira/retroarch/ -s /media/roms/minira/saves/${CORE} -c /media/roms/minira/cheats/${CORE} /media/roms/retroarch/.retroarch/cores/${CORE} "${ROM}"
}

dialog_cmd() {
		dialog  --radiolist "=== RA changes === \n X BTN:Select \n <-,->BTN:OK or Cancel \n START BTN:Enter" 0 0 0 1 "Retroarch" ${SEL1}  2 "picoarch" ${SEL2}  3 "minira" ${SEL3} 2>${LASTSELECT}
}

if [ -f ${LASTSELECT} ];
then
	SELECT=$(cat ${LASTSELECT})
	case "${SELECT}" in
		"1" )
			SEL1="on"
			;;
		"2" )
			SEL2="on"
			;;
		"3" )
			SEL3="on"
			;;
	esac
	dialog_cmd 
	if [ "$?" = "0" ];
	then
		SELECT=$(cat ${LASTSELECT})
		case "${SELECT}" in
			"1" )
				retroarch_cmd
			;;
			"2" )
				picoarch_cmd
			;;
			"3" )
				minira_cmd
			;;
		esac
	else
		exit 0
	fi
else
	SEL1="on"
	dialog_cmd 
	if [ "$?" = "0" ];
	then
		SELECT=$(cat ${LASTSELECT})
		case "${SELECT}" in
			"1" )
				retroarch_cmd
			;;
			"2" )
				picoarch_cmd
			;;
			"3" )
				minira_cmd
			;;
		esac
	else
		exit 0
	fi
fi

