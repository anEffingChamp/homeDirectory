if [ $(uname) == 'Darwin' ]; then
	function cdls(){
		cd "$@"
		\ls -GA
	}
	alias cd='cdls'
    alias chmod='chmod -vv'
    alias find='find -L . -name'
	function genpass(){
		echo -n "Enter password. ";
		stty -echo; read szPass; stty echo; echo
        pbcopy <<< $(\supergenpass -p $szPass "$@")
	}
	alias ls='ls -GA'
    alias open='\open'
	alias ps='ps axjSm'
	alias top='top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
	alias w='w -i'
# shutdown
    poweroff='sudo shutdown -h 60'
fi
