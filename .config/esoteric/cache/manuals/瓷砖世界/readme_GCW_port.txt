Tile World for Handhelds v1.0: First GCW release, 3/14/2014

GCW/Handheld port by senquack. 

Source code of this port is available on github:
https://github.com/senquack/tileworld-for-handhelds

IF YOU WOULD LIKE TO PLAY THE ORIGINAL CHIP'S CHALLENGE: You must own the original Windows Chip's Challenge. If your disk is damaged, you can find a rescue copy by googling the term WITH QUOTES: "Original Chip's Challenge Download". Unzip the archive and upload the CHIPS.DAT file inside to your $HOME/.tworld/data/ folder via FTP. Note that you must first run the program and then exit in order for the folder to be created.

LIST OF IMRPOVEMENTS OF TILEWORLD FOR HANDHELDS OVER ORIGINAL TILEWORLD:
(Courtesy of Senor Quack, aka Dan Silsby dansilsby<AT>gmail.com):

* Simplified, menu-driven interface.

* All sprites graphics have been hand-shrunk and optimized for 320x240 screens.  The new game interface is reminescent of the Amiga/Lynx versions of Chip's 
	Challenge.  The sprites and blitting code have been modified to allow 32-bit alpha-blended shadows instead of the ugly checkerboard shadows of the original Tileworld.  

* Automatic configuration of level packs: No more editing configuration files! When first running the program, a folder is created in $HOME/.tworld containing both $HOME/.tworld/data/ and $HOME/.tworld/sets/ folders. As with the original PC Tileworld, you can place additional level packs, including the CHIPS.DAT file from the original Windows version of Chip's Challenge, into the $HOME/.tworld/data/ folder. Normally you would need to then manually create configuration files in the $HOME/.tworld/sets/ folder for this new levelset, one for running with the MS rulset and one for the Lynx rulset. Now, the game automatically creates these two configuration files for you and there is no need at all to even touch the sets/ folder and I recommend you do not.  Additionally, the game will now detect if the original CHIPS.DAT file is encountered and automatically add the "fixlynx=y" option to its Lynx configuration file (to fix a few minor glitches introduced by Microsoft's version of the levelset)

* You can control Chip from both the GCW DPAD, the A/B/X/Y buttons, as well as the analog stick (after enabling it from the main menu).

* There is a optional over-30-minute musical soundtrack added from the chipmusic artist Am-Fm (menu music from Chaozz of gp32x.com)

* Automatically remembers last levelpack and level played, so no need to remember and go back to it. Automatically displays scores and times and number of levels in levelsets completed.  

* Improved death sound.  The original death sound was much to distorted and grating for my tastes.

* NOTE: The original Chip's Challenge level pack cannot be included because of copyright restrictions. Instead, a few very good user-created levelpacks have been included, including the best-of levelpack CCLP3. A CCLP1 (replacement in spirit for original Chip's Challenge levelpack) level pack is also in the works to be released sometime soon. Many hundreds of community-created levelsets have been created and are available for download. The Chip's Challenge community is quite active and new levels are created every day.  You can enter your scores in online score-tracking sites and compete against the best.

