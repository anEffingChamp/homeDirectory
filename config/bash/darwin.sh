if [ $(uname) == 'Darwin' ]; then
	function cdls(){
		cd "$@"
		\ls -GA
	}
	alias cd='cdls'
#	function genpass(){
#		echo -n "Enter password. "
#		stty -echo; read szPass; stty echo; echo 
#		supergenpass -p $szPass "$@" | pbcopy
#	}
	alias ls='ls -GA'
    alias open='\open'
	alias ps='ps axjSm'
	alias top='top -l 1 -o mem -stats pid,user,command,cpu,mem -n 10'
	alias w='w -i'
fi
