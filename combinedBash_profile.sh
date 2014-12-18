export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/opt/local/usr/bin:/opt/local/usr/sbin:$PATH"
export PATH="~/bin:$PATH"

# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
function contactColor {
	szString=$1
	szString=${szString##*/}
	if [ $1 != $PWD ]; then
		szString=$($1)
	fi
	szString=${szString:0:1}
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
function gitBranch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='$(date +%a:%H%M) \[\e[$(contactColor whoami)m\]\u@\[\e[$(contactColor hostname)m\]\h:\[\e[$(contactColor $PWD)m\]\w\[\e[1;35m\]$(gitBranch) \[\e[m\]'

# Always remember that if you ever have a problem with an alias, you can send a
# command unaltered directly to the binary, eg /bin/ls --help
alias ":e"='vim'
alias emerge=' emerge --ask --autounmask --update --alphabetical --quiet --deep --newuse'
if [ -x lftp ]; then
	alias ftp='lftp'
fi
alias grcat='grcat ~/.bower_components/grcat/grcat'
alias grep='grep --color=always'
alias less='less -msr'
alias ln='ln -sv'
alias ls='ls -A --color=always'
alias ssh='ssh -y -c blowfish -C'
alias rm='rm -v'
alias rsync='rsync --update --compress --copy-links --verbose'
alias tar='tar --create --update --bzip2 --verbose --file --keep-newer-files --recursion --totals --verify'
alias top='top -bn 1 -u $USER'
alias wget='wget --timestamping --no-verbose --continue --no-host-directories --no-cache --no-check-certificate -e robots=off --adjust-extension'
alias ping='ping -c 10 -i 0.2'
alias ps='ps -AjHLm'
alias traceroute='traceroute -nw 1'
alias type='type -a'
# shutdown
alias restart='sudo shutdown -r now'
alias sleep='sudo shutdown -h now'
alias poweroff='sudo shutdown -p now'
# git
alias gitamend='git commit -a --amend'
# external configuration
if [ -f ~/.bashConfig/webDevelopment ]; then
	source ~/.bashConfig/webDevelopment
#	source ~/.bashConfig/darwin
fi

# startup routine
wget -qO ~/.bash_profile https://raw.githubusercontent.com/anEffingChamp/homeDirectory/master/combinedBash_profile.sh
echo ''
w
echo ''
ls
echo ''

