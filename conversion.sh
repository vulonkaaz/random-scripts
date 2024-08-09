#!/bin/sh

var3="unit conversion > "
while [ "$var3" ]
do
	var=$(dmenu -p "$var3"</dev/null)
	var2=$(echo $var| awk '{print $1;}')
	var3=
	case $(echo "$var" | awk '{print $NF}') in
		km)
			var3="$(echo "$var2*0.6213711922" | bc) miles"
			;;
		mi|miles)
			var3="$(echo "$var2*1.609344" | bc) km"
			;;
		"°C")
			var3="$(echo "($var2*1.8)+32"|bc)°F"
			;;
		"°F")
			var3="$(echo -e "scale=2\n($var2-32)/1.8"|bc)°C"
	esac
done
