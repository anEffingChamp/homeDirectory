export  PATH="/usr/local/mysql/bin:$PATH"
export  PATH="~/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

if [ -f ~/.drush_bashrc ] ; then
	. ~/.drush_bashrc
	. ~/bin/drush.complete.sh
fi
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[0;36m\]$(date +%a:%H%M) \u@\h:\[\e[0;32m\]\w$(parse_git_branch) \[\e[m\]'

# http://linux.die.net/man/1/ls
# Swap in your favorite command in place of LS for a manual.
alias ls='ls -GA'
alias ssh='ssh -y -c blowfish'
alias less='less -msr'
alias rsync='rsync --update --compress --copy-links'
