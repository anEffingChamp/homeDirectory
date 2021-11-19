if [ $(uname) == 'Darwin' ]; then
    export LSCOLORS='GxFxCxDxBxegedabagaced'
    function functionCD(){
        \cd "$@"
        \ls -GA
    }
    function functionFind(){
        \find -L . -iname *$@*
    }
    function functionSupergenpass(){
        echo -n "Enter password. ";
        stty -echo; read szPass; stty echo; echo
        # I have also started using fifteen character passes, because some
        # domains have minimum character requirements.
        # I manually append a special character for domains that require it.
        pbcopy <<< "$(\supergenpass --length 19 --password $szPass "$@")!"
    }
    alias cat='cat -bs'
    alias cd='functionCD'
    alias chmod='chmod -vv'
    alias ls='ls -GA'
    alias httpd='sudo apachectl'
    alias mkdir='mkdir -pv'
    alias open='\open'
    alias ps='ps axjSm'
    alias rm='rm -iv'
    alias top='top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
    alias w='w -i'
# shutdown
    poweroff='sudo shutdown -h 60'
fi
