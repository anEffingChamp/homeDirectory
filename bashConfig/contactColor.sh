# You may wonder why I go through all of this trouble. If you manage multiple
# servers then you can never have enough cues to visually distinguish them.
# Color that prompt, baby. The first letter determines the color to give another
# indication.
function contactColor {
	szString=$1
	szString=${szString##*/}
	if [ $1 == gitBranch ]; then
		szString=${szString:1:1}
	else
		szString=${szString:0:1}
	fi
	case $szString in
		[ab1AB]) colName='0;31';;
		[cd2CD]) colName='0;33';;
		[ef3EF]) colName='0;34';;
		[gh4GH]) colName='0;35';;
		[ij5IJ]) colName='0;36';;
		[kl6KL]) colName='0;37';;
		[mn7MN]) colName='1;30';;
		[op8OP]) colName='1;31';;
		[qr9QR]) colName='1;32';;
		[st~ST]) colName='1;33';;
		[uvEV]) colName='1;34';;
		[wxWX]) colName='1;35';;
		[yzYZ]) colName='1;36';;
	esac
	echo $colName
}
