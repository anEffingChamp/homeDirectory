if [ $(uname) == 'Darwin' ]; then
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
        pbcopy <<< $(\supergenpass -p $szPass "$@")
    }
    alias cd='functionCD'
    alias chmod='chmod -vv'
    alias ls='ls -GA'
    alias httpd='sudo /usr/sbin/apachectl'
    alias open='\open'
    alias ps='ps axjSm'
    alias top='top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
    alias w='w -i'
# shutdown
    poweroff='sudo shutdown -h 60'
fi
