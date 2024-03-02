#!/bin/sh -x

PICOROOT="/media/roms/picoarch"
PICOCORES="/media/roms/retroarch/.retroarch/cores"
PICOEXE="${PICOROOT}/picoarch_plumOS"
CORE="${PICOCORES}/${2}"

ROMFILE="${1}"
ROMEXT=`echo "${ROMFILE}" | awk -F. '{print $NF}'`

if [ "${2}" = "dosbox-pure_libretro.so" ];
then
  ${PICOEXE} ${CORE} "`echo -e ${ROMFILE}`"
  exit 0
fi

if [ "${ROMEXT}" = zip -o "${ROMEXT}" = ZIP ];
then
  DIRNAME=`dirname "${ROMFILE}"`
  ROMNAMETMP=`unzip -o -x -d "${DIRNAME}" "${ROMFILE}" | grep "inflating:" | awk -Finflating: '{print $NF}' | echo -e $(cat)`
  ROMNAME=`basename "${ROMNAMETMP}"`

  ${PICOEXE} ${CORE} "${DIRNAME}/`echo -e ${ROMNAME}`"
  rm  "${DIRNAME}/`echo -e ${ROMNAME}`"
  exit 0
fi

${PICOEXE} ${CORE} "`echo -e ${ROMFILE}`"
exit 0


