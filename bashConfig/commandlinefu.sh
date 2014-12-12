#!/bin/bash --
# http://www.commandlinefu.com/site/api
# Get ideas from across the internet whenever you input
# a command, and become a command line master.

#nLine=$(( RANDOM%$( wc -l $aryList )+1 ))
#aryList=$( head -$(nLine) | tail -2 )
szLast=!:0
szLast=$( echo -n $szLast | openssl base64 )
echo $szLast
#curl -s "http://www.commandlinefu.com/commands/matching/NULL/$szLast/plaintext" | grep -A1 '^#' | grep -v commandlinefu.com | head -$(( RANDOM%25+1 )) | tail -2
