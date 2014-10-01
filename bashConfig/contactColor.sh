function contactColor {
	szString=$(whoami)
	if [ -o host ]; then
		szString=$(hostname)
	fi
	case ${szString:0:1} in
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
