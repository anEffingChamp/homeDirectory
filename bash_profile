export  PATH="/usr/local/mysql/bin:$PATH"
export  PATH="~/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

if [ -f ~/.drush_bashrc ] ; then
	. ~/.drush_bashrc
	. ~/bin/drush.complete.sh
fi
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
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
PS1='$(date +%a:%H%M) \[\e[$(contactColor)m\]\u@\[\e[$(contactColor -o host)m\]\h:\[\e[0;32m\]\w\[\e[1;35m\]$(parse_git_branch) \[\e[m\]'

alias less='less -msr'
alias ls='ls -GA'
alias ln='ln -sv'
alias ssh='ssh -y -c blowfish'
alias rm='rm -v'
alias restart='sudo shutdown -r now'
alias rsync='rsync --update --compress --copy-links'
# acoc block
if [ -f ~/.acoc.conf ]; then
	alias ping='acoc ping -c 10 -i 0.1'
	alias top='acoc top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
	alias traceroute='acoc traceroute -nw 1'
	alias w='acoc w -i'
fi

# external configuration
if [ -f ~/.bashConfig/webDevelopment ]; then
	source ~/.bashConfig/webDevelopment
fi

# startup routine
echo -e "\x1B[0;32m$(fortune)\033[m"
echo ''
w
echo ''
ls
echo ''

