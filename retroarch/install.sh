#!/bin/sh
mkdir -p /media/home/.gmenu2x/sections/retroarch_full
mkdir -p /media/home/.esoteric/sections/retroarch_full
rsync -a ./0_retroarch_350 /media/home/.gmenu2x/sections/retroarch_full
rsync -a ./0_retroarch_350 /media/home/.esoteric/sections/retroarch_full

