#!/bin/sh

dialog  --radiolist "=== Frontend Changes === \n X BTN:Select \n <-,->BTN:OK or Cancel \n START BTN:Enter" 0 0 0 1 "Gmenu2x" on  2 "esoteric" off  3 "MinUI" off 2>/tmp/fechanges

if [ "$?" = "0" ];
then
	SELECT=$(cat /tmp/fechanges)
	case "${SELECT}" in
		"1" )
			cp /media/home/apps/fechanges/gmenu2x /usr/sbin/frontend_start
			;;
		"2" )
			cp /media/home/apps/fechanges/esoteric /usr/sbin/frontend_start
			;;
		"3" )
			if [ -d /media/roms/.system/gkdpixel ];
			then
				cp /media/home/apps/fechanges/minui /usr/sbin/frontend_start
			fi
			;;
	esac
else
	exit 0
fi

rm -f /tmp/fechanges
