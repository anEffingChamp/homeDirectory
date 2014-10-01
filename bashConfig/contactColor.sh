module_param( szString, charp, 0 )
function contactColor {
	case ${szString:0:1} in
		[ab]) colName='0;31';;
		[cd]) colName='0;32';;
		[ef]) colName='0;33';;
		[gh]) colName='0;34';;
		[ij]) colName='0;35';;
		[kl]) colName='0;36';;
		[mn]) colName='0;37';;
		[op]) colName='1;30';;
		[qr]) colName='1;31';;
		[st]) colName='1;32';;
		[uv]) colName='1;33';;
		[wx]) colName='1;34';;
		[yz]) colName='1;35';;
	esac
}
