#!/bin/sh                   
#  ___  __  __  __  
# /'___/\ \/\ \/\ \ 
#/\ \__\ \ \_/ \_/ \
#\ \____\ \___x___/'
# \/____/\/__//__/                     
# cw - center window

# get current window id, width and height
WID=$(pfw)
WW=$(wattr w $WID)
WH=$(wattr h $WID)

# get screen width and height
ROOT=$(lsw -r)
SW=$(wattr w $ROOT)
SH=$(wattr h $ROOT)

# move the current window to the center of the screen
wtp $(((SW - WW)/2)) $(((SH - WH)/2)) $WW $WH $WID
