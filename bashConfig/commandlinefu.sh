#!/bin/bash --
# http://www.commandlinefu.com/site/api
# Get ideas from across the internet whenever you input
# a command, and become a command line master.

function commandlinefu {
	wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed -n '1d; /./p'
}
