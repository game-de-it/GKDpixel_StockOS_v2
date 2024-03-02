#!/bin/sh -x

BIN="/media/roms/retroarch/bin/retroarch_rg350"
ROM="$1"
CORE="/media/roms/retroarch/.retroarch/cores/$2"
CFG="/media/roms/retroarch/retroarch.cfg"

if [ -n "$2" ];
then
"${BIN}" --config "${CFG}" -L "${CORE}" "${ROM}"
else
"${BIN}" --config "${CFG}"
fi


