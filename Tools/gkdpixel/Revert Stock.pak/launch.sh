#!/bin/sh

	cd /usr/sbin/
	rm frontend_start
	cp /usr/local/home/apps/fechanges/gmenu2x frontend_start
	# rm -rf $SDCARD_PATH/.system
	sync && reboot
