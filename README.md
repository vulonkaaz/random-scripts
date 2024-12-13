# A collection of Unix scripts to make your life easier

This repo will contain a few of the many scripts I use on my linux desktop,
most of them are meant to be run from keyboard shortcuts and sometimes rely
on dmenu (you can substiture it with bemenu if you're on wayland)

You can see this kind of like a dotfiles repo, except I won't share my entire
desktop configuration because I view this as too personal

It is recommanded that you read and understand the scripts before running them

## Explanation of each script

### zshrc_example

not a script but an example .zshrc that I consider sane defaults

zsh has the reputation to be very powerful but a pain to configure, with this you
can just use it as a drop in replacement for bash and it should work right and feel
right right away, main differences are like vi-like keybindings and autocompletion
is a bit different than bash (way better)

you may wanna customize the PS1 variable and add your own aliases

### addtorrent.sh

a command line script to add a torrent to a remote Transmission server over HTTP

usage `./addtorrent.sh url`, url can be a magnet link or the http link of a
.torrent file

you have to set host, username and password before using

~~stolen from~~ inspired by this https://gist.github.com/tree-s/1b2177bac1d8f2b70fac9e235a7f262c

### audiosink.sh

Select the default audio output on wireplumber, when you launch the script a dmenu
will appear with the list of every audio sink that wireplumber can see and you can
select one to make it default, very useful if you have multiple audio cards

### autorip.sh

rip an audio CD using cdparanoia and let you name the files and save them as .flac

save everything to ~/music, depends on cdparanoia, ffmpeg and id3v2

interactive script meant to be run inside a terminal, please read it carefully
before trying it out

### calc.sh

a dmenu calculator, very simple and effective, relies on the bc calculator

### conversion.sh

a dmenu program to convert some units, as of now it can convert km to miles and
vice versa and °C/°F, I'll add more when I feel like I need them, I'll probably
accept your pull request if you decide to add more units yourself

### emoji.sh

an emoji selector that I probably copied from Luke Smith or someone else idk, 
copies the selected emoji to the clipboard

you might need to adjust the path of the emoji list and use absolute path

replace xclip with wl-copy on wayland

### playmusic.sh

select a song or an album from your music library and play it with mpd, one of my
favourite scripts

### intclock.sh

show the hour in multiple timezones as well as the calendar
