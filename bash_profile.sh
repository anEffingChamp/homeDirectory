export PATH="/opt/local/usr/bin:/opt/local/usr/sbin:$PATH"
export PATH="~/bin:$PATH"

if [ -f ~/.bower_components/drushBashProfile/index.bashrc ] ; then
	. ~/.bower_components/drushBashProfile/index.bashrc
	. ~/bin/drush.complete.sh
fi
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
source ~/.bashConfig/contactColor.sh
source ~/.bashConfig/gitBranch.sh
PS1='$(date +%a%H%M) \[\e[$(contactColor whoami)m\]\u@\[\e[$(contactColor hostname)m\]\h:\[\e[$(contactColor $PWD)m\]\w\[\e[$(contactColor gitBranch)m\]$(gitBranch) \[\e[m\]'
PS_PERSONALITY='linux'

alias emerge='emerge --ask'
alias grcat='grcat ~/.bower_components/grcat/grcat'
alias less='less -msr'
alias ln='ln -sv'
alias ls='ls -A --color=auto'
alias ssh='ssh -y -c blowfish'
alias rm='rm -v'
alias rsync='rsync --update --compress --copy-links'
alias tar='tar --create --update --bzip2 --verbose --file --keep-newer-files --recursion --totals --verify'
alias wget='wget --timestamping --no-verbose --continue --no-host-directories --no-cache --no-check-certificate -e robots=off --adjust-extension'
alias ping='ping -c 10 -i 0.1'
alias ps='ps -AjHLm'
alias top='top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
alias traceroute='traceroute -nw 1'
alias type='type -a'
if [ $(uname) == 'Darwin' ]; then
	alias ls='ls -GA'
	alias ps='ps axjSm'
	alias w='w -i'
fi
# shutdown
alias restart='sudo shutdown -r now'
alias sleep='sudo shutdown -h now'
alias poweroff='sudo shutdown -p now'
# git
alias gitamend='git commit -a --amend'
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

