#!/bin/sh

var=$(wpctl status | sed "0,/ ├─ Sinks:/d;/ │  $/q" | dmenu -i -l 20 | cut -c 10-12)

[ -n "$var" ] && wpctl set-default $var
