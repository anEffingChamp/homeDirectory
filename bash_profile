export  PATH="/usr/local/mysql/bin:$PATH"
export  PATH="~/bin:$PATH"
# MacPorts Installer addition on 2014-07-15_at_16:19:22: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f ~/.drush_bashrc ] ; then
	. ~/.drush_bashrc
	. ~/bin/drush.complete.sh
fi

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[1;36m\]$(date +%a:%H%M) \u:\[\e[m\]\[\e[1;32m\]\w$(parse_git_branch) \[\e[m\]'
##
# Your previous /Users/jonathan/.bash_profile file was backed up as /Users/jonathan/.bash_profile.macports-saved_2014-08-19_at_17:49:52
##

# MacPorts Installer addition on 2014-08-19_at_17:49:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#http://bluishcoder.co.nz/articles/mac-ssh.html
