# OPK(スタンドアローンエミュレータなど)ファイルの追加手順
下記のディレクトリにOPKファイルを設置してください。
```
SD : roms/.config/apps
(FULL Path : /media/roms/.config/apps)
```

# gmenu2xとesotericへの追加手順
## libretroコアの場合
下記のフォーマットでファイルを作成します。(改行コードはLFにしてください)  
例)
```
title=GBA
consoleapp=true
description=libretro core gpsp
exec=/media/roms/.config/apps/RA_changes/RA_changes.sh
params=%f gpsp_libretro.so
icon=/media/roms/.config/icons/gba.png
selectorbrowser=true
selectordir=/media/roms/roms/gba
```
下記を参考に<>の中を変更してください
```
title=<ROM dir name>
```
```
description=libretro core <core name>
```
```
params=%f <core name>_libretro.so
```
```
icon=/media/roms/.config/icons/<ROM dir name>.png
(好きな場所に画像ファイルを設置しても構いません)

または下記のようにskin内のiconsディレクトリを参照させることも可能です。

icon=skin:icons/<ROM dir name>.png
```
```
selectordir=/media/roms/roms/<ROM dir name>
```

下記の場所にファイルの設置してください。(任意のファイル名でOK)
```
SD : .config/.esoteric/sections/retroarch
SD : .config/.gmenu2x/sections/retroarch
(FULL path : /media/roms/.config/.esoteric/sections/retroarch/)
(FULL path : /media/roms/.config/.gmenu2x/sections/retroarch/)

```

---
# english translation
# Procedure for adding OPK (standalone emulator, etc.) files
Please place the OPK file in the directory below.
````
SD: roms/.config/apps
(FULL Path: /media/roms/.config/apps)
````

# Addition steps to gmenu2x and esoteric
## For libretro core
Create a file in the format below. (Please set the line feed code to LF)
example)
````
title=GBA
consoleapp=true
description=libretro core gpsp
exec=/media/roms/.config/apps/RA_changes/RA_changes.sh
params=%f gpsp_libretro.so
icon=/media/roms/.config/icons/gba.png
selectorbrowser=true
selectordir=/media/roms/roms/gba
````
Please refer to the following and change what is inside <>
````
title=<ROM dir name>
````
````
description=libretro core <core name>
````
````
params=%f <core name>_libretro.so
````
````
icon=/media/roms/.config/icons/<ROM dir name>.png
(You can place the image file anywhere you like)

Or you can refer to the icons directory within the skin as shown below.

icon=skin:icons/<ROM dir name>.png
````
````
selectordir=/media/roms/roms/<ROM dir name>
````

Please install the file in the location below. (Any file name is OK)
````
SD: .config/.esoteric/sections/retroarch
SD: .config/.gmenu2x/sections/retroarch
(FULL path : /media/roms/.config/.esoteric/sections/retroarch/)
(FULL path : /media/roms/.config/.gmenu2x/sections/retroarch/)

````

that's all