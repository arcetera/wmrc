#!/bin/sh                   
#
# cw - center window
# (c) arcetera 2015 - wtfpl
#

if [ -z "$1" ]; then
  echo "usage: $(basename $0) <wid>"
  exit
fi

WID=$(pfw)
WW=$(wattr w $WID)
WH=$(wattr h $WID)
ROOT=$(lsw -r)
SW=$(wattr w $ROOT)
SH=$(wattr h $ROOT)

wtp $(((SW - WW)/2)) $(((SH - WH)/2)) $WW $WH $1
