                            WETSPOT II - SDL port

                 Originally by Enhanced Creations 1997-98
              aka Angelo Mottola - a dot mottola at gmail dot com

            Re-implemented in C/SDL by Dmitry Smagin in 2013-2014
                   dmitry dot s dot smagin at gmail dot com

                    Music by Drozerix [at] gmail [dot] com 

     For other informations on this game, extra stuff and more, visit the
Enhanced Creations home, the QuickBasic Enhanced Programming Page located at:

                http://reocities.com/SiliconValley/Lakes/7303/
                          http://www.ecplusplus.com/

                Source code of this port can be found here:
                 https://github.com/dmitrysmagin/wetspot2


TABLE OF CONTENTS ___________________________________________________________

1 - Why re-implementation?
2 - Playing WetSpot 2
 2.1 - Your goal
 2.1 - The game menu
 2.3 - External worlds
APPENDIX A - Default keys
APPENDIX B - Hints
APPENDIX C - Credits
_____________________________________________________________________________


=============================================================================
1 - WHY RE-IMPLEMENTATION
=============================================================================

Originally Wetspot II was written by Angelo Mottola (Enhanced Creations) in
1997-98. While being programmed in QuickBasic 4.5 it used some obscure
techniques like machine code injecting, EMS memory using and programming
SB Pro / 16 hardware directly. This allowed to reach the quality previously
unthinkable for a QuickBasic games.

Unfortunately these advanced techniques made this game non portable even
to FreeBasic which came much later. The only way left was to reprogram this
game completely from scratch.

And here it comes, a full re-implementation of game engine entirely in pure C
using SDL library. This allows porting to any platform supporting SDL: windows,
linux, freebsd and others.


=============================================================================
2 - PLAYING WETSPOT 2
=============================================================================

2.1 - Your goal

If you have ever played WetSpot, the prequel to this game, you should already
know how to play. Anyway, you control a small crab and your target is to kill
every monster on the current level. Since you have no weapons, to accomplish
your job you must use the same bricks that forms the walls of the level you
are into. How? Simple. Just go towards a brick and push the fire button; the
brick in front of you will begin moving in that direction, and will stop its
run only when it hits another brick. Needless to say, if one of this bricks
runs over an enemy, that enemy dies, and the same happens for the players.
If you push a brick while another brick is on the other side (i.e. the brick
you're pushing can't move), the first will be destroyed, maybe releasing a
hidden bonus. Not all bricks can be moved or destroyed; usually moveable
blocks (which can be destroyed) can be easily recognized from the fixed blocks
(which cannot be destroyed), but sometimes you'll have to find it by yourself.
There are a lot of hidden bonuses, from the simple score bonus to the extra
life, as well as special objects with particular effects. The letters for
example: there are 5 letters that form the word "BONUS", and once you've got
them all, you gain a life. Try them out!

Once an enemy dies, it releases an extra bonus; when all the enemies are gone,
you pass the level. WetSpot worlds are made of areas (the standard world
contains 10 areas for example), and each of them contains 5 levels with the
same graphics and the same music. When you complete an area, a password is
given, allowing you to continue the game from the first level of the new area,
without having to complete the previous levels. Passwords can be inserted with
the INSERT PASSWORD option of the game main menu; see the next section for
details.

The best feature of WetSpot 2 (W2 for short) remains the two players mode.
Player one controls the red crab, and player two the blue crab; they act
simultaneously on the same level, and believe me, this is really fun.
If you know WetSpot, you should know that when one of the two players died,
the level had to start again from the beginning, and when a player lost his
last life, the game was stopped and the "game over" message came out. How many
times have you hated this system, when your friend died and you had to end the
game with him? Well, forget it! WetSpot 2 finally has a decent two players
mode! When a player dies, the other can continue playing, and he (if other
lives are available) appears again when the other ends the level or dies.

2.2 - The game menu

Once the small intro ends, a main menu appears on the screen. The selection
bar can be moved using the arrow keys, and <ENTER> selects the highlighted
option. Here follows a brief description of the available options:

* START ONE PLAYER GAME
        Starts the game in one player mode from the beginning
* START TWO PLAYERS GAME
        Starts the game in two players mode from the beginning
* ENTER PASSWORD
        Allows you to enter a password to an area of the current world. See
        above for details on how the password system works.
* LOAD EXTERNAL WORLD
        Allows you to change the current world. For details see section
        2.4 - External worlds.
* SHOW CREDITS
        Shows the credits of the game
* QUIT
        Exits the game

If you don't press any key for a while, a demo of the game will begin,
followed by the credits and the top ten. During this demo, as well as during
the credits show and the top ten, press the <START> key or the <SELECT> key to
return back to the menu.

2.3 - External worlds

If you're reading all this text file from the beginning, you should have
noticed I've said that the world can be changed. As said, a world is a
collection of areas, each containing 5 levels; well, if the standard world
(50 levels) is not enough for you, you'll like this feature. External worlds
are worlds made by other people like you, and can contain from 1 up to 20
areas! Each world is contained into one file only (MIDI musics, if available,
are the only separated files) and must be put into the same directory of the
game. Once this is done, you can load it from the "LOAD EXTERNAL WORLD" option
in the main menu; you also have to know that each world has its own top 10,
which is reset the first time you play it.
If you're interested in making new worlds, take a look at "Worlds of WetSpot",
the WetSpot 2 world editor; you can download it from my web page. Here you'll
also find a collection of worlds made by other people, for your pleasure.
Once you've made a world, send me it via E-Mail, and I'll publish it there!

=============================================================================
APPENDIX A - DEFAULT KEYS
=============================================================================

When in 1 PLAYER MODE use D-PAD to control directions and A to push bricks.

When in 2 PLAYERS MODE, things are little complicated:

   PLAYER 1       PLAYER 2
   ===========    =========
   D-PAD UP           Y      - up
   D-PAD DOWN         B      - down
   D-PAD LEFT         X      - left
   D_PAD RIGHT        A      - right
   L SHIFT         R SHIFT   - fire

=============================================================================
APPENDIX B - HINTS
=============================================================================

WetSpot 2 has 7 different kinds of enemies: each of them can attack you in
different ways. Let's examine these enemies and how to handle them:
WORM    This is the easiest enemy of the game. It moves almost randomly and
        it's easy to avoid it, since it's really slow.
BEE     Bees go slow, but are smarter than worms. The problem is that when
        they see you, they begin to run and become really hard to avoid. So
        don't let they be in your same column or line, it may be dangerous.
PENGUIN A penguin goes slow, but it's one of the smartest enemies. It fires
        eggs which can kill you, so don't let it stay in front of you!
SHARK   Those lettle purple sharks are the less intelligent enemy of the game.
        They always go into a diagonal direction, and when they hit a wall,
        they invert their run. They can't go in small passages, but they are
        fast, so be careful.
GHOST   Unlike in WetSpot 1, here ghost can't teleport themselves. They go
        slowly seeking you, and when they see their target, they fires fast
        bubbles which can trap leaving you for a little time without defences.
        Don't let they trap you!
MOUSE   Mice are intelligent and fast creatures. It can be really dangerous
        having one of them behind you... Fortunately they don't fire!
PUTTY   What are those little yellow bags? If mice were dangerous, these ones
        are terrible! They're less intelligent than mice, but they fires small
        green slimes that bounce on the walls for a little time... This is the
        hardest enemy, what else to say?

Try to be always behind a block that can move for a long distance; infact the
more enemies you hit with the same block, the more points you gain. The first
enemy will let you gain 100 pts, the second 200, the third 400 and then 800,
1600, 3200 and 6400 for each other one you hit.
Each area has its own password that lets you begin a new game where you ended
your last one. Don't forget these words!
If you're really in trouble and you can't do a level, you can use a cheat
code. Here is a list of the cheat code, so

=============================================================================
APPENDIX C - CREDITS
=============================================================================

Angelo Mottola - artwork and original coding in QB
Dmitry Smagin  - porting to C/SDL
Drozerix       - pack of nice musics

=============================================================================

- End of document -

