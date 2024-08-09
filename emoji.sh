#!/bin/sh

dmenu -i -l 25 < ./emoji_list | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
