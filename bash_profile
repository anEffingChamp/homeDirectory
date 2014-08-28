export  PATH="/usr/local/mysql/bin:$PATH"
export  PATH="~/bin:$PATH"
# MacPorts Installer addition on 2014-07-15_at_16:19:22: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f ~/.drush_bashrc ] ; then
	. ~/.drush_bashrc
	. ~/bin/drush.complete.sh
fi

# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[0;36m\]$(date +%a:%H%M) \u:\[\e[0;32m\]\w$(parse_git_branch) \[\e[m\]'

# MacPorts Installer addition on 2014-08-19_at_17:49:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# http://randomviking.wordpress.com/2008/12/21/adding-some-color-to-ls-in-mac-os/
# http://linux.die.net/man/1/ls
alias ls='$(which ls) -GA'
# http://linux.die.net/man/1/ssh
alias ssh='$(which ssh) -y -c blowfish'
# http://linux.die.net/man/1/less
alias less='$(which less) -msr'
