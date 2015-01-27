#!/bin/bash --

echo "Software upgrade, I choose YOU! [ yes | no ]"
read response
if [ $response == 'yes' ]; then
	pacapt -Su
fi
