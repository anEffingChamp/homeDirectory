export PATH="/opt/local/usr/bin:/opt/local/usr/sbin:$PATH"
export PATH="~/bin:$PATH"
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
source ~/.config/bash/contactColor.sh
source ~/.config/bash/commandlinefu.sh
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.libraries/liquidprompt/liquidprompt
LP_PS1_PREFIX="\[\e[$(contactColor '$(date +%a)')m\]$(date +%a)"
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
	cd "$@"
	ls -Ah --color=always
}
#alias cd='cdls'
alias chmod='chmod --changes'
alias cp='rsync'
alias dd="dd bs=1024k"
alias emerge=' emerge --ask --autounmask --update --alphabetical --quiet --deep --newuse'
function genpass(){
	echo -n "Enter password. "
	stty -echo; read szPass; stty echo; echo 
	supergenpass -p $szPass "$@" \
        | xclip -selection clipboard;
}
alias supergenpass='genpass'
alias grep='zfgrep --line-number --ignore-case --color=always --recursive -S --exclude-dir=.git'
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
alias systemupgrade='sudo nice -n 18 npm upgrade -g \
    && sudo nice -n 18 zypper install-new-recommends \
    && sudo nice -n 18 zypper update'
alias systemhalt='sudo shutdown -h now'
alias systemrestart='sudo shutdown -r now'
# git
alias gitamend='git commit --verbose -a --amend'
alias gitbranch='git show-branch -a --date-order | less'
alias gitcommit='git add . && git commit --verbose'
alias gitdiff='git diff --ignore-all-space --color=always | less'
alias gitmerge='git merge --strategy-option=ours --verbose --stat --log'
alias gitpull='git pull --stat --all'
alias gitpush='gitpull && git push --force-with-lease --set-upstream'
alias gitstatus='git status | less'
alias gitlog='gitstatus && gitdiff && gitbranch && git log --stat -p --graph'
alias gitrebase='git rebase -i'
# external configuration
if [ -f ~/.config/bash/webDevelopment.sh ]; then
	source ~/.config/bash/webDevelopment.sh
	source ~/.config/bash/darwin.sh
fi

# startup routine
if [ '' != $(which fortune) ]; then
    echo -e "\x1B[0;32m$(fortune)\033[m"
fi
# Run upgrades on Thursdays, because no one wants to deal with broken systems on
# Friday.
ls

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
