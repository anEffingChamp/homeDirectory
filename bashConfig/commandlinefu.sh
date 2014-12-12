#!/bin/bash --
# http://www.commandlinefu.com/site/api
# Get ideas from across the internet whenever you input
# a command, and become a command line master.

#nLine=$(( RANDOM%$( wc -l $aryList )+1 ))
#aryList=$( head -$(nLine) | tail -2 )
curl -s "http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext" | grep -A1 '^#' | grep -v commandlinefu.com | head -$(( RANDOM%25+1 )) | tail -2
