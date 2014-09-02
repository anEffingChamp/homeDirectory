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
alias ls='$(which ls) -GA'
# http://linux.die.net/man/1/ssh
alias ssh='$(which ssh) -y -c blowfish'
# http://linux.die.net/man/1/less
alias less='$(which less) -msr'
# http://linux.die.net/man/1/rsync
alias rsync='$(which rsync) --update --compress --copy-links'
