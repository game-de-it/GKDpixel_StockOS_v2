## ROMディレクトリ(ROM directorys)
|path|libretro core|stabalone emu|
|:-----------|------------|------------:|
|SD : roms/3do||3DO|
|SD : roms/amiga|puae||
|SD : roms/atarilynx/||Handy|
|SD : roms/cps1|fbalpha2012_cps1||
|SD : roms/cps2|fbalpha2012_cps2||
|SD : roms/dos|dosbox_pure|Dosbox|
|SD : roms/easyrpg||easyrpg|
|SD : roms/gamegear|smsplus-gx||
|SD : roms/gb|gambatte|Gambatte-DMS|
|SD : roms/gba|gpsp, mgba|ReGBA|
|SD : roms/gbc|gambatte|GBC|
|SD : roms/j2me||Java|
|SD : roms/mastersystem|smsplus-gx|SMS_SDL|
|SD : roms/megacd|picodrive||
|SD : roms/megadrive|picodrive|Genesis-SX|
|SD : roms/msx|fmsx|openMSX|
|SD : roms/msx2|fmsx||
|SD : roms/neogeo| fbalpha2012_neogeo| gngeo|
|SD : roms/nes| fceumm quicknes | Fceux|
|SD : roms/ngp| mednafen_ngp||
|SD : roms/ngpc| mednafen_ngp | NGPC|
|SD : roms/pcengine| mednafen_pce_fast| PCE|
|SD : roms/pcenginecd| mednafen_pce_fast||
|SD : roms/pcfx| PCFXEmu||
|SD : roms/pico-8| fake08||
|SD : roms/pokemini| pokemini||
|SD : roms/psx|| PS4all|
|SD : roms/scummvm| scummvm||
|SD : roms/sega32x| picodrive||
|SD : roms/snes| snes9x, snes9x2010 | SFCPocket, SnesHi|
|SD : roms/supervision|| Watara|
|SD : roms/tic-80|| TIC-80|
|SD : roms/virtualboy|| VBEmu|
|SD : roms/wonderswan| mednafen_wswan||
|SD : roms/wonderswancolor| mednafen_wswan | WSC|

## BIOSファイルの設置場所(BIOS file location)

|path|Remarks|
|:-----------|------------:|
|SD : roms/bios|retroarch,picoarch,MinUI|
|SD : minira/retroarch|minira|
|SD : .config/(emulator name)/bios|standalone emu|

例）example)  
PCSX4all
```
SD : .config/.pcsx4all/bios/

● List of BIOS file names
SLPM86192.bin  SLPS00829.bin  SLPS01463.bin  SLPS02124.bin  TRAINSCPS.bin
SLPM87056.bin  SLPS00898.bin  SLPS01490.bin  SLPS02350.bin  slps02364.bin
SLPS00785.bin  SLPS00917.bin  SLPS01704.bin  SLPS02661.bin
SCPH1000.BIN  SCPH5000.BIN  SCPH7001.BIN
SCPH1001.BIN  SCPH5500.BIN  SCPH7502.BIN
```

that's all