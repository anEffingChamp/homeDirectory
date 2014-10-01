export  PATH="/usr/local/mysql/bin:$PATH"
export  PATH="~/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

if [ -f ~/.drush_bashrc ] ; then
	. ~/.drush_bashrc
	. ~/bin/drush.complete.sh
fi
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
source ~/.bashConfig/contactColor.sh
source ~/.bashConfig/gitBranch.sh
PS1='$(date +%a:%H%M) \[\e[$(contactColor)m\]\u@\[\e[$(contactColor -o host)m\]\h:\[\e[0;32m\]\w\[\e[1;35m\]$(gitBranch) \[\e[m\]'

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

