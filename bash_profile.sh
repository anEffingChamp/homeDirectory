export PATH="/opt/local/usr/bin:/opt/local/usr/sbin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="~/bin:$PATH"

# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
source ~/.config/bash/contactColor.sh
source ~/.config/bash/gitBranch.sh
source ~/.config/bash/commandlinefu.sh
#PS1='\[\e[$(contactColor date)m\]$(date +%a)$(w | grep --max-count=1 load )\n'
PS1='\[\e[$( contactColor '$( date +%k )' )m\]$( date +%a%H%M ) '
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
alias ":x"='exit'
alias bc="bc -l"
function cdls(){
	cd $@
	ls -Ah --color=always
}
alias dd="dd bs=1024k"
alias emerge=' emerge --ask --autounmask --update --alphabetical --quiet --deep --newuse'
function genpass(){
	echo -n "Enter password. "
	stty -echo; read szPass; stty echo; echo 
	supergenpass -p $szPass "$@" | xclip -selection clipboard;
}
alias grep='grep --color=always'
alias less='less -msr'
alias ln='ln -sv'
alias ls='ls -Ah --color=always'
alias open="xdg-open"
alias ssh='ssh -aYC'
alias rm='rm -v'
alias rsync='rsync --update --compress --copy-links --verbose --progress --delay-updates'
alias tar='tar -xzvf'
alias top='top -bn 1 -u $USER'
alias wget='wget --timestamping --no-verbose --continue --no-host-directories --no-cache --no-check-certificate -e robots=off --adjust-extension'
alias ping='ping -c 10 -i 0.2'
alias ps='ps -ax'
alias traceroute='traceroute -nw 1'
alias type='type -a'
alias zypper='sudo zypper'
# shutdown
alias systemupgrade='sudo nice -n 18 zypper up && sudo nice -n 18 npm upgrade -g'
alias poweroff='sudo shutdown -p now'
alias restart='sudo shutdown -r now'
alias sleep='sudo shutdown -h now'
# git
alias gitamend='git commit -a --amend'
alias gitbranch='git show-branch -a --date-order'
alias gitcommit='git add . && git commit -a'
alias gitdiff='git diff --minimal --check'
alias gitlog='git status | less -msr && git diff && gitbranch | less -msr && git log --stat -p'
alias gitrebase='git rebase -i'
# external configuration
if [ -f ~/.config/bash/webDevelopment ]; then
	source ~/.config/bash/webDevelopment
	source ~/.config/bash/darwin
fi

# startup routine
	if [ '' != $(which fortune) ]; then
		echo -e "\x1B[0;32m$(fortune)\033[m"
	fi
# Run upgrades on Thursdays, because no one wants to deal with broken systems on
# Friday.
	ls


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
