## オリジナルのStockOSからの変更点
### ● シンボリックリンクの設定
|シンボリックリンクの元|シンボリックリンクの先|
|:-----------|------------:|
|/usr/share/gmenu2x|/media/roms/.config/gmenu2x|
|/usr/share/minui|/media/roms/.config/minui|
|/usr/share/n|/media/roms/.config/esoteric|
|/usr/local/home|/media/roms/.config|
|/media/home|/media/roms/.config|
|/media/data/apps|/media/roms/.config/apps|

opendinguxのディレクトリ構成を壊さないようにしつつ、主要なディレクトリをSDカードのルート直下(/media/roms)に配置するためにシンボリックリンクを利用している

---
# english translation

## Changes from the original StockOS
### ● Symbolic link settings
|Source of symbolic link|Destination of symbolic link|
|:------------|------------:|
|/usr/share/gmenu2x|/media/roms/.config/gmenu2x|
|/usr/share/minui|/media/roms/.config/minui|
|/usr/share/n|/media/roms/.config/esoteric|
|/usr/local/home|/media/roms/.config|
|/media/home|/media/roms/.config|
|/media/data/apps|/media/roms/.config/apps|

Symbolic links are used to place the main directories directly under the root of the SD card (/media/roms) without breaking the opendingux directory structure.

that's all