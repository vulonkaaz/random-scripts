#!/bin/sh

var=calculator

while [ "$var" ]
do
	var=$(dmenu -p $var </dev/null|bc)
done
