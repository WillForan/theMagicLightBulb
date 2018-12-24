#!/bin/bash

# export each figure
nfig=10
DPI=600
[ ! -d img ] && mkdir img

for i in $(seq 1 $nfig); do
   oi=$(printf %02d $i)
   inkscape --without-gui  \
    -i "F$i" -j \
    --file=./drawing.svg \
    --export-eps=img/$oi.eps \
    --export-dpi=$DPI \
    --export-background='#ffffff'
done
