#!/bin/bash

set_brightness() {
	ddc-brightness $1
	if [ $1 = 0 ] ; then
		brightnessctl set 1%
	else
		brightnessctl set $1%
	fi
	echo $1 > /tmp/ddc_value
	echo $1 > $SWAYSOCK.wob
}

get_ddc_value() {
	cat /tmp/ddc_value
}
[ -f /tmp/ddc_ready ] || echo 1 > /tmp/ddc_ready
[ -f /tmp/ddc_value ] || echo 0 > /tmp/ddc_value
if [[ $(cat /tmp/ddc_ready) == 1 ]] ; then
	echo 0 > /tmp/ddc_ready
	if [[ $(get_ddc_value) == 100 ]] ; then
		set_brightness 0
	else
		new_val=$(expr $(get_ddc_value) + 25)
		set_brightness $new_val
	fi

	echo 1 > /tmp/ddc_ready
fi

