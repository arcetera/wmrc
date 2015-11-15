#!/bin/sh
#     ___             
#    /\_ \            
#  __\//\ \     ____  
# /'___\ \ \   /',__\ 
#/\ \__/\_\ \_/\__, `\
#\ \____/\____\/\____/
# \/____\/____/\/___/                      
# cls - CLoSest window focus

# get current window id
CUR=$(pfw)

usage() {
    echo "usage: $(basename $0) <direction>" >&2
    exit 1
}

next_east() {
    lsw | xargs wattr xi | sort -nr | sed "0,/$CUR/d" | sed "1s/^[0-9]* //p;d"
}

next_west() {
    lsw | xargs wattr xi | sort -n | sed "0,/$CUR/d" | sed "1s/^[0-9]* //p;d"
}

next_north() {
    lsw | xargs wattr yi | sort -nr | sed "0,/$CUR/d" | sed "1s/^[0-9]* //p;d"
}

next_south() {
    lsw | xargs wattr yi | sort -n | sed "0,/$CUR/d" | sed "1s/^[0-9]* //p;d"
}

# Use the specification of your choice: WASD, HJKL, ←↑↓→, west/north/south/east
case $1 in
    h|a|east|left)  wfw $(next_east)  2>/dev/null ;;
    j|s|south|down) wfw $(next_south) 2>/dev/null ;;
    k|w|north|up)   wfw $(next_north) 2>/dev/null ;;
    l|d|west|right) wfw $(next_west)  2>/dev/null ;;
esac
