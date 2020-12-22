export PATH="/opt/local/usr/bin:/opt/local/usr/sbin:$PATH"
export PATH="/usr/local/mysql/bin:~/bin:$PATH"

# external configuration
if [[ -d .config ]]; then
    # https://wiki.archlinux.org/index.php/Color_Bash_Prompt
    source .config/bash/colorCode.sh
    source .config/bash/webDevelopment.sh
    # https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash
    source .config/git/bash_completion.sh
fi
# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.libraries/liquidprompt/liquidprompt

PS_PERSONALITY='linux'
EDITOR='vim'
# Always remember that if you ever have a problem with an alias, you can send a
# command unaltered directly to the binary, eg
#       /bin/ls --help
#       \ls --help
alias ":e"='vim'
alias ":x"='exit'
alias bc="bc -l"
alias chmod='chmod --changes'
alias cd='functionCD'
function functionCD() {
    \cd "$@"
    ls
}
alias cp='rsync'
alias dd="dd bs=1024k"
alias emerge='emerge --ask --autounmask --update --alphabetical --quiet --deep --newuse'
alias find='functionFind'
function functionFind() {
    \find -L -ls . -iname *$@*
}
alias grep='functionGrep'
function functionGrep() {
    \grep --line-number --ignore-case --color=always --recursive \
        --exclude-dir=.git $@ .
}
# This function takes one argument to compile, and execute a Java program.
alias java='functionJava'
function functionJava() {
    fileName="${1%.*}"
    javac ${fileName}.java && java $fileName && rm *.class
}
alias less='less -msr'
alias supergenpass='functionSupergenpass'
function functionSupergenpass() {
    echo -n "Enter password. "
    stty -echo; read passMaster; stty echo; echo
    # I have also started using fifteen character passes, because some domains
    # have minimum character requirements.
    # I manually append a special character for domains that require it.
    "$(supergenpass --length 19 --password $passMaster)!" \
        | xclip -selection clipboard;
}
alias ln='ln -svhf'
alias ls='ls -Ah --color --group-directories-first'
alias mv='mv -iv'
alias open="xdg-open"
alias ssh='ssh -aYC'
alias rm='rm -v'
# Normally I prefer human legible command flags, but this would throw a 'too
# many flags' error in that case.
alias rsync='rsync -uLphP6 --delay-updates'
alias tar='tar -xzvf'
alias top='top -bn 1 -u $USER'
alias wget='wget --timestamping --no-verbose --continue --no-host-directories --no-cache --no-check-certificate -e robots=off --adjust-extension'
alias ping='ping -c 10 -i 0.2'
alias ps='ps -ax'
alias traceroute='traceroute -nw 1'
alias type='type -a'
alias vimBasic='vim -Nu NONE'
alias zypper='sudo zypper'
# shutdown
alias systemupgrade='sudo nice -n 18 npm upgrade -g \
    && sudo nice -n 18 zypper install-new-recommends \
    && sudo nice -n 18 zypper update'
alias systemhalt='sudo shutdown -h now'
alias systemrestart='sudo shutdown -r now'
# git
alias gitamend='git commit --verbose -a --amend'
alias gitbranch='git branch -a -vv'
alias gitcommit='gitdiff && git add . && git commit -a'
alias gitdiff='git diff --ignore-all-space --color=always | less'
alias gitgrep='git rev-list --all | xargs git grep --break'
alias gitpull='git pull --stat --all'
alias gitpush='gitpull && echo && git push --force-with-lease --set-upstream && echo && git remote show origin'
alias gitshow='git show-branch -a --date-order | less'
alias gitstatus='git status | less'
alias gitstash='git stash show --stat -p'
alias gitlog='gitstatus && gitdiff && gitshow && git log --stat -p --graph'
alias gitrebase='git rebase -i'
if [ -f .config/bash/darwin.sh ]; then
    source .config/bash/darwin.sh
fi

# startup routine
if [ "" != "$(command -v fortune)" ]; then
    echo -e "$(colorCode $(hostname))$(fortune)\033[m\n"
fi
# Run upgrades on Thursdays, because no one wants to deal with broken systems on
# Friday.
ls

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

alias laptop='bash <(curl -s https://raw.githubusercontent.com/monfresh/laptop/master/laptop)'

export PATH="$HOME/.bin:$PATH"
more
