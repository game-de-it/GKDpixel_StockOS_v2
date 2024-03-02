#!/bin/sh

SDROOT=
for ROMDIRS  in  3do amiga amigacd32 amstradcpc arcade arduboy atari2600 atari5200 atari7800 atari800 atarijaguar atarilynx atarist atomiswave bios c128 c16 c64 channelf coleco cps1 cps2 cps3 daphne doom dreamcast easyrpg famicom fbneo fds gameandwatch gamegear gamegearh gb gba gbah gbc gbch gbh genesis genh idtech intellivision j2me mac mame mastersystem megacd megadrive megadrive-japan megaduck moonlight mplayer msx msx2 music n64 naomi nds neocd neogeo nes nesh ngp ngpc odyssey openbor pc pc88 pc98 pcengine pcenginecd pcfx pet pico-8 pokemini ports psp pspminis psx satellaview saturn savestates screenshots scripts sega32x segacd sfc sg-1000 sgfx snes snesh snesmsu1 st-v sufami supervision tg16 tg16cd tic-80 uzebox vectrex vic20 videopac virtualboy wonderswan wonderswancolor x1 x68000 zmachine zx81zxspectrum dos scummvm
do
	mkdir -p ${SDROOT}/${ROMDIRS}/previews
done
