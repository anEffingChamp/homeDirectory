export PATH="/opt/local/usr/bin:/opt/local/usr/sbin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="~/bin:$PATH"

# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
source ~/.bashConfig/contactColor.sh
source ~/.bashConfig/gitBranch.sh
source ~/.bashConfig/commandlinefu.sh
#PS1='\[\e[$(contactColor date)m\]$(date +%a)$(w | grep --max-count=1 load )\n'
PS1='\[\e[1;30m\]$( commandlinefu )'
PS1=$PS1'\[\e[$( contactColor '$( date +%k )' )m\]$( date +%a%H%M ) '
PS1=$PS1'\[\e[$( contactColor '$( whoami )' )m\]\u@'
PS1=$PS1'\[\e[$( contactColor '$( hostname )' )m\]\h:'
PS1=$PS1'\[\e[$( contactColor $PWD )m\]\w'
PS1=$PS1'\[\e[$( contactColor $( gitBranch ) )m\] $( gitBranch ) \[\e[m\]'
PS_PERSONALITY='linux'
EDITOR='vim'

# Always remember that if you ever have a problem with an alias, you can send a
# command unaltered directly to the binary, eg
#		/bin/ls --help
#		\ls --help
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
if [ '' != $(which fortune) ]; then
	echo -e "\x1B[0;32m$(fortune)\033[m"
fi
# This is a good place to run your upgrade script. It is not a huge deal for a
# local machine you use regularly, but an automatic reminder can help your
# server.
ls
