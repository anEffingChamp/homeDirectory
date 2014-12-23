#!/bin/bash --
# http://www.commandlinefu.com/site/api
# Get ideas from across the internet whenever you input
# a command, and become a command line master.

function commandlinefu {
	szTimeStamp=$(date +%s)
	if [[ ${szTimeStamp:9:1 } == '3' \
	|| ${szTimeStamp:9:1 } == '0' \
	|| ${szTimeStamp:9:1 } == '6' \
	]]; then
		wget -qO - http://www.commandlinefu.com/commands/random/plaintext \
			| sed -n '1d; /./p'
#		wait $!
		echo " "
	fi
}
