#!/bin/sh
test -z $1 && echo "need magnet link!
$0 <magnet link>" && exit -1

HOST=ip address
PORT=9091
USER=username
PASS=password

LINK="$1"
# set true if you want every torrent to be paused initially
#PAUSED="true"
PAUSED="false"
SESSID=$(curl --silent --anyauth --user $USER:$PASS "http://$HOST:$PORT/transmission/rpc" | sed 's/.*<code>//g;s/<\/code>.*//g')
curl --silent --anyauth --user $USER:$PASS --header "$SESSID" "http://$HOST:$PORT/transmission/rpc" -d "{\"method\":\"torrent-add\",\"arguments\":{\"paused\":${PAUSED},\"filename\":\"${LINK}\"}}"
