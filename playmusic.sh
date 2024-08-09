#!/bin/sh

var=$(mpc ls | dmenu -i -l 20)
[ -n "$var" ] && mpc clear && mpc add "$var" && mpc play
