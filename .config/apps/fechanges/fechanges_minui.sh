#!/bin/sh

#dialog  --radiolist "Front End Changes" 0 0 0 1 "Gmenu2x" on  2 "esoteric" off  3 "MinUI" off 2>/tmp/fechanges

#if [ "$?" = "0" ];
#then
#	SELECT=$(cat /tmp/fechanges)
#	case "${SELECT}" in
#		"1" )
			cp /media/home/apps/fechanges/gmenu2x /usr/sbin/frontend_start
#			;;
#		"2" )
#			cp /media/home/apps/fechanges/esoteric /usr/sbin/frontend_start
#			;;
#		"3" )
#			cp /media/home/apps/fechanges/minui /usr/sbin/frontend_start
#			;;
#	esac
#else
#	exit 0
#fi
#
#rm -f /tmp/fechanges
