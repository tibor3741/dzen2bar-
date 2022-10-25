#!/usr/bin/env bash

# remove all dzen2 instance
pkill dzen2

# include
DIR=$(dirname "$0")
. ${DIR}/output.sh

# dzen2

xpos=0
ypos=2050
width=1364
height=25
fgcolor=$colWhite
bgcolor=$colBlack
font="-*-fixed-medium-*-*-*-12-*-*-*-*-*-*-*"

parameters="  -x $xpos -y $ypos -w $width -h $height" 
parameters+=" -fn $font"
parameters+=" -ta c -bg $bgcolor -fg $fgcolor"
parameters+=" -title-name dzentop"

generated_output   | dzen2 $parameters & . ${DIR}/repiterwall.sh

sleep 1 && exec `(transset-df .8 -n dzentop >/dev/null 2>&1 &)` &
