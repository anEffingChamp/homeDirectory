export  PATH="~/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

if [ -f ~/.drush_bashrc ] ; then
	. ~/.drush_bashrc
	. ~/bin/drush.complete.sh
fi
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
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
PS1='$(date +%a:%H%M) \[\e[$(contactColor whoami)m\]\u@\[\e[$(contactColor hostname)m\]\h:\[\e[$(contactColor $PWD)m\]\w\[\e[1;35m\]$(gitBranch) \[\e[m\]'

alias less='less -msr'
alias ls='ls -A --color=auto'
alias ln='ln -sv'
alias ssh='ssh -y -c blowfish'
alias rm='rm -v'
alias restart='sudo shutdown -r now'
alias rsync='rsync --update --compress --copy-links'
# ACOC block
alias ping='acoc ping -c 10 -i 0.1'
alias top='acoc top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
alias traceroute='acoc traceroute -nw 1'
alias w='acoc w'

# external configuration
if [ -f ~/.bashConfig/webDevelopment ]; then
	source ~/.bashConfig/webDevelopment
fi

# startup routine
echo -e "\x1B[0;32m$(fortune)\033"
echo ''
w
echo ''
ls
echo ''

