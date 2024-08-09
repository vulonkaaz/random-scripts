#!/bin/sh
#
# script to rip, encode and tag a CD using cdparanoia, ffmpeg and id3v2

cd ~/music
echo "Artist ?"
read artist
echo "Album name ?"
read album
echo "Year ?"
read year

mkdir "$artist - $album"
cd "$artist - $album"

cdparanoia -B

for track in *.cdda.wav
do
	number=$(echo $track|sed "s/track//;s/.cdda.wav//")
	echo "name of track $number ?"
	read title

	ffmpeg -i $track -acodec flac -compression_level 12 "$number $title.flac"
	id3v2 -a "$artist" -A "$album" -y $year -t "$title" -T $number "$number $title.flac"
done

rm *.cdda.wav

# for f in *.flac; do metaflac --import-picture-from="cover.jpg" "$f"; done
# mpc update
