
<p align="center">
  <img src="./asset/top.png" width="480">  
</p>

Note: I named this SD card image "v2", but this is not GKD official (^^;)  

## Acknowledgments
I would like to thank the developers of each software and those who supported my work.
- MinUI: https://github.com/shauninman/MinUI
- MinUI-Addons: https://github.com/retrogamecorps/GKD-Pixel-MinUI-Addons
- picoarch: https://git.crowdedwood.com/picoarch/
- Jutleys: https://www.rghandhelds.com/
- Rex: https://retrocn.com/  
And those who supported me...

## Introduction
New features have been added based on StockOS.
Please note that this OS image does not include BIOS or ROM files in accordance with Japanese law.

## new function
- Possible to switch between 3 front ends
   - esoteric
   - gmenu2x
   - MinUI
- Possibility to switch between 3 libretro frontends (enabled with esoteric and gmenu2x)
   - Retroarch
   - picoarch
   - minira
- Added over 90 libretro cores
   - [Click here for core list](./asset/sc01.png)
- Changed to the same ROM directory layout as JELOS
- Delete the esoteric and gmenu2x test sections and unify them into the emulators section
- ~~ You can create thumbnails by taking snapshots with picoarch ~~

# Known issues
## retroarch problem
- Won't go full screen
- Tearing occurs because vsync cannot be used
- Cores with high resolution do not display the screen correctly

## picoarch problem
- If the ROM file is a zip, the emulator may fail to run if there are multiple files within the zip file.

## MinUI
- Refers to its own ROM directory

## Overall problem
- Operation of all libretro cores has not been confirmed
- Sound may be interrupted
- Tearing may occur
- Not reflected when overwriting or updating existing files via USB connection
   - Changes will be reflected by restarting the OS
   - There is no problem in adding or deleting new files.
- USB device not available
   - Keyboard, WiFi dongle, etc.

## Other notes
- Excludes game section, some opk files, and skin files to reduce file size
   - You can restore by copying the necessary files from the old StockOS to .config/apps
   - Applications such as ffplay can be obtained from the following site
   https://github.com/SeongGino/RetroGame350-AppRepo/tree/master/Applications
   

# Front end switching procedure
For esoteric and gmenu2x, execute "FE changes" in the "settings" section.  
If you want to switch from MinUI, please execute "Revert Stock" in "Tools".  

# File path list
## ROM directory
[Click here for a list of ROM directory file paths](./ROMDIRS.md)

## front end
[Click here for a list of front-end file paths](./FRONTENDDIRS.md)


## Emulator
[Click here for a list of emulator file paths](./EMUDIRS.md)  
[Click here for steps to add the emulator](./ADDEMU.md)

# Information for developers
[Click here for information for developers](./DEVINFO.md)


that's all