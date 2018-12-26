#!/bin/bash

# export each figure
nfig=11
DPI=600
TYPE=png
[ ! -d img ] && mkdir img
[ $# -le 0 ] && echo "$0 all" && exit 1
[ $1 == all ] && figs=$(seq 0 $nfig) || figs=$@
for i in $figs; do
   oi=$(printf %02d $i)
   inkscape --without-gui  \
    -i "F$i" -j \
    --file=./drawing.svg \
    --export-$TYPE=img/$oi.$TYPE \
    --export-dpi=$DPI \
    --export-background='#ffffff'
    #--export-eps=img/$oi.eps \
done
