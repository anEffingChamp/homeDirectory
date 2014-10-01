# You may wonder why I go through all of this trouble. If you manage multiple
# servers then you can never have enough cues to visually distinguish them. Color
# that prompt, baby. The first letter determines the color to give another indication.
function contactColor {
	szString=$1
	szString=${szString##*/}
	if [ $1 != $PWD ]; then
		szString=$($1)
	fi
	szString=${szString:0:1}
	case $szString in
		[ab]) colName='0;31';;
		[cd]) colName='0;33';;
		[ef]) colName='0;34';;
		[gh]) colName='0;35';;
		[ij]) colName='0;36';;
		[kl]) colName='0;37';;
		[mn]) colName='1;30';;
		[op]) colName='1;31';;
		[qr]) colName='1;32';;
		[st]) colName='1;33';;
		[uv]) colName='1;34';;
		[wx]) colName='1;35';;
		[yz]) colName='1;36';;
	esac
	echo $colName
}
