#!/bin/sh

printf "🌐 UTC : "
date -u +%R

printf "🌎 EST : "
TZ='America/New_York' date +%R

printf "🌏 JST : "
TZ='Asia/Tokyo' date +%R
printf "\n"

cal

read # this line is only so that the script stays on until user input, 
     # my usage is to spawn it using `st intclock.sh` I had to find a way 
     # for the st window to stay on, delete it if you don't need it
