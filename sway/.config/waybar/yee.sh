#!/bin/bash
set -x
[ -f /tmp/yee_ready ] || echo true > /tmp/yee_ready
if [[ $(cat /tmp/yee_ready) == "true" ]] ; then
	echo false > /tmp/yee_ready
	yee
else
	exit 0
fi
echo true > /tmp/yee_ready
