
Help for Bard on GCW-Zero

Bard Storyteller is a text reader.  Bard not only allows a user to read books, but also can read books to the user using text-to-speech.

Basic Use
On the GCW-Zero, use the game controller keys

Y page up

B page down

A start/stop scrolling (or select in menus)

X start/stop speaking

SELECT menu of sub-screens

START return to main text screen or show info

L increase font/speed/volume

R decrease font/speed/volume

Bard can read txt, html and epub files.

Bard saves its context in a configuration file ($HOME/.bard_config) across sessions, remembering the files you are reading, the position you are at, and which voice you selected.

You can select a file to read from the File menu, press SELECT then use the d-pad to move to the File selection menu, press A to select the menu, then again use the d-pad and A to select a File/Directory to navigate to the File in your file systems.  It will remember that directory for future File selections.

You can select a voice from the voice menu, press SELECT then use the d-pad to move to the voice selection menu, which is likely on the second page, press A to select the menu, then again use the d-pad and A to select a voice. X will start speaking.  The current spoken word is highlighted.

Bard uses CMU's Flite Speech Synthesizer System to render the text as speech.  Three core voices are included: slt (US female), rms (US male) and awb.  The default voice, kal, using an older technology, is also available.

Bard Storyteller is free software, distributed under a BSD-like license. The source is available from http://festvox.org/bard.


Bard Storyteller 0.10 July 2014
http://festvox.org/bard/

Bard Storyteller is a text reader.  Bard not only allows a user to
read books, but can also read books to the user using text-to-speech.
It supports txt, epub and (x)html files.

Bard Storyteller is free software, distributed under a BSD-like license.

Bard depends on CMU Flite (cmuflite.org) for both some general C
utilities and for synthesis itself.  Bard is targeted at small
portable devices such as smart phones, not so smart phones and offline
devices, but also works on laptops and desktops.  The original target
platform was the open hardware Ben Nanonote from sharism.cc
(http://en.qi-hardware.com/wiki/Ben_NanoNote).  

In addition to source code support for standard Linux and Windows
support, binary distributions are available for Ben Nanonote, Open
Pandora and GCW Zero.

Bard uses libSDL (http://www.libsdl.org -- 1.2) to provide graphics, sound
and input, thus aiming at multiple platforms.  Bard is written in C.

Bard was written by Alan W Black (awb@cs.cmu.edu) as a better ebook reader
for him to use, and as a tool to improve CMU Flite's speech synthesis API.

Bard was somewhat inspired by various ebook reading apps I've used on
various PDAs and phones.  Most recently, after downloading Lecturer
http://code.google.com/p/lecturer/ by Ulrich Hecht, and adding Flite
support to Lecturer, I saw it might be easy to write a full text
reader myself from scratch, so I did.

I'd like this to be TTS engine neutral but its not.

At present the kal_diphone voice is built in, but any dumped Flite cg 
voice may be specified on command line with 
     -voice file:///home/.../VOICE.flitevox
If initially started with -voices_dir PATH, voices may be loaded
within Bard and remembered for particular files that are being read.  At
present 16KHz (order 25) cg voices are too slow for the Ben Nanonote
but are fine on faster devices (e.g. Open Pandora, Rasberry Pi, GCW
Zero).

It can be run fully from the graphical page, using game console keys only, 
but also can use a standard keyboard.  There isn't yet support for devices
with no keyboard or game console buttons.

Alan W Black                                email: awb@cs.cmu.edu
Language Technologies Institute             http://www.cs.cmu.edu/~awb/
Carnegie Mellon University                  tel: +1-412-268-6299  
5000 Forbes Ave, Pittsburgh PA, 15213, USA. fax: +1-412-268-6298

DEPENDENCIES

flite-1.9.0 (at least, you want to update from the CVS tree)
   a version that works with this version of bard is available in
   http://festvox.org/bard/   
libSDL 1.2
libSDL_ttf 2.0
   Both are available from  http://www.libsdl.org
For epub (which is optional)
   you need 
       libzip http://www.nih.at/libzip/
   Note we need both zip.h and zipconf.h installed before configure will
   enable epub support. 
For epub images you also need
libSDL_image
libSDL_gfx

COMPILATION

tar jxvf flite-1.9-current.tar.bz2
cd flite-1.9-current
./configure && make && make voices
export FLITEDIR=`pwd`

tar jxvf bard-0.10.0-release.tar.bz2
cd bard-0.10-release
./configure
make
./bin/bard -voices_dir $FLITEDIR/voices

Bard requires access to a .ttf font, at configuration time it tries to find 
this in /usr/share/fonts, but it might not succeed in finding the right one.
You can edit config/config and add a (full) pathname to a .ttf font.
For development I used LiberationSerif-Regular.ttf (you probably want a serif
font).  You can get the Liberation fonts from
   https://www.redhat.com/promo/fonts/
Or DejaVu fonts from
   http://dejavu-fonts.org
If it can't automatically find one, you can specify a full path name to one

./bin/bard -font /usr/share/fonts/liberation/LiberationSerif-Regular.ttf

And it will remember that for future calls (it saves the font pathname in 
$HOME/.bard_config on exit)

A config file is created in $HOME/.bard_config.  You might need to
remove that if things fail to work out properly.  This stores
customized colors, fonts and also what your current file (and
position) is and up to 20 recent files and positions.  I am trying to
make that robust over version upgrades, and have succeeded so far.

BASIC COMMANDS ARE

tab    Toggle speech mode
space  Toggle scrolling
f      display file selection window
       arrow keys, home, page down, and enter for selection
g      display general parameters (macro navigation, volume, speed)
h      display help
r      recent files
m      menu (of other pages)
v      voice select
i      Increase font/volume up/increase scroll speed
o      Decrease font/volume down/decrease scroll speed
vol up/down (F11/F12) control scroll speed, volume or page up/down

You can navigate a page with pagedown, home and cursor keys within a
page.  Page up is harder than I thought, it does something useful, but
may be not always exactly what you want.

The general parameters page ('g') displays file name, position, speech
volume, speed, battery status (if supported), and current time.  If
you use the arrow keys to position over "<<<" and ">>>", pressing
enter will modify the values.  Currently the battery status on the
my Nanonote is found by running a script called "battery" and taking $2
field in the result.  (This works for my battery script but probably
not yours).  You can make it run your battery script by specifying it
on the command line with -battery_script SCRIPT (or editing the
.bard_config file).

The volume keys on the Ben Nanonote (F11 F12) provide control for 
scroll speed, volume or page up/down depending the current state
(scrolling, speaking or nothing, respectively)

This version doesn't support a mouse (or touch screen) but later versions
will (as well as whatever buttons you have on your mobile device).

COLORS

You can customize your own colors by specify them in the form of 0xFFFFFF
in the ~/.bard_config file.  It is best to run bard and quit it to get a 
basic file then change the various color specifications to what you want.
There are only a very few builtin (black. white, red, blue and green), but
you can specify and red green blue hex values.  e.g. if you want the main
text window background color to be antiquewhite change the line

-text_background_color "white"

to

-text_background_color "0xcdc0b0"

HISTORY

0.10 July 2014
     gcw-zero support (which only has game console buttons)
     much better (x)html support so it can properly interpret multiple tags
0.9  Dec 2013
     menu window (for machines that don't have keyboards)
     voice select, voice name saved with recent files
     "game" controller support (but really for OpenPandora key bindings)
     Open Pandora .pnd support
x.x  Nov 17 2013  LM
     changes to build on Windows with mingw and msys, handle relative image 
     locations with ../ in path, handle &lt; &gt; and better support for &amp;
     add support for plus on US keyboards (SDLK_Equals plus shift).
0.8  ??? (never released)
     (x)html fixes/support
0.7  Mar 8th 2012
     cursor hiding, epub (generic tokenstreams), some xhtml highlighting
     paragraph processing improved, bug fixes, epub images,
     fixed smooth scrolling, better audio streaming.
0.6  Jan 29th 2012
     page up (ish), keyboard rationalization
     discover screen size (works on n900), screen blank
     bug fixes, externally specified colors, smooth scroll
0.5  Jan 22nd 2012 (first release to nanonote list)
     info page: volume, position, speed, battery and time working
     make ipk, logo
0.4  Jan 21st 2012
     imported into CVS, paging forward and back (with arrow keys and speech), 
     recent files page, general info page (%pos, volume, speed -- well almost)
     .bard_config, make install, use installed fonts rather than include one
0.3  Jan 14th 2012
     SDL audio stable and now default.  Help window.  Tokens on screen can 
     be traversed with arrow keys, and highlighted.  File selection
     works (with dirent and highlighting).  Improved configuration, added
     COPYING and README, included free ttf font.  Technically functional
0.2  Jan 7th 2012
     display text (good ttf), speaks, auto pages forward
     support SDL and flite_direct audio.  
     Runs on ben, yentna, leith and awbt60
0.1  Jan 4th 2012
     displays loaded text, pages forward, can change font size
     runs on desktop and Ben Nanonote

AKNOWLEDGEMENTS

Thanks to LM for giving a whole set of fixes, and getting me to add some
new features

The Bard port to OpenPandora was encouraged by the Alive and Kicking
Coding Competition 2013/2014.

FUTURE GOALS

We want this to be a platform for new (fast) high quality synthesis
voices in Flite and are working on getting them fast enough to be
practical on 336MHz processors.  We also want to support more ebook
formats.  Specific features already on the list are:

Other ebook formats: prc, rtf, pdf
More complete support for epub, (x)html
Search
Chapter Navigation (when chapters can be found in epub files)
Support for more platforms (e.g. Android)
Support for non-Latin writing scripts (through pango)
(Cleaner) Support for cross compilation
SDL 2 support

But please recommend other features you'd like to see.

Bard Storyteller is free software.
http://festvox.org/bard/

We have kept the core code to BSD-like copyright, thus the system is
free to use in commercial products, with commercial extensions.  (L)GPL
code is only utilized as part of the build process or linked in at run-time
(SDL libraries) and does not taint any of the core code.  

As a collection it is distributed under the following license.  Note
a few files in this distribution have a different but equally free
non-conflicting licence, see below.

                  Language Technologies Institute                      
                     Carnegie Mellon University                        
                      Copyright (c) 2012-2014
                        All Rights Reserved.                           
                                                                       
  Permission is hereby granted, free of charge, to use and distribute  
  this software and its documentation without restriction, including   
  without limitation the rights to use, copy, modify, merge, publish,  
  distribute, sublicense, and/or sell copies of this work, and to      
  permit persons to whom this work is furnished to do so, subject to   
  the following conditions:                                            
   1. The code must retain the above copyright notice, this list of    
      conditions and the following disclaimer.                         
   2. Any modifications must be clearly marked as such.                
   3. Original authors' names are not deleted.                         
   4. The authors' names are not used to endorse or promote products   
      derived from this software without specific prior written        
      permission.                                                      
                                                                       
  CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK         
  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      
  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   
  SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE      
  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   
  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          
  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       
  THIS SOFTWARE.                                                       
                                                                       
All files within this distribution have the above license except
the following

config.sub
config.guess
missing
install-sh
mkinstalldirs
   Copyright FSF, and under the GPL, these files are only used for
   convenient configuration and are not part of the generated binary,
   and therefore do not impose any GPL restrictions on the rest of the
   system.  But as they are standard methods for configuration they 
   are included.

pandora/PXML.xml
pandora/bard.sh
   These were autogenerated by the Open Pandora scripts genpxml.sh and
   pnd_make.sh, but edited to be appropriate for the Bard.pnd file.

Some of the files are directly copied from CMU Flite (which is
distributed under the same CMU license and same copyright holder
(CMU), but may have copyright dates starting before the existence of
BARD 0.0).

GCW Zero Port (Jul 2014)

In addition to the copyright on Bard itself, the GCW Zero binary distribution
includes linked code from

libzip http://www.nih.at/libzip/

Copyright (C) 1999-2014 Dieter Baron and Thomas Klausner

The authors can be contacted at <libzip@nih.at>

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. The names of the authors may not be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 

----------------------------------------

Also as there is no Serif ttf font on the GCW Zero we include

LiberationSerif-Regular.ttf

http://www.dafont.com/liberation-serif.font

Which is lincenced under the GPL by Red Hat Inc
https://fedoraproject.org/wiki/Licensing/LiberationFontLicense But as
this is distributed as a separate file that licence does not change
the licence on the other aggregated components of the whole system.


