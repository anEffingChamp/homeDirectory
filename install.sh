#!/bin/bash --
echo 'Where are your credentials? '; read sServerHome
sServerHome="$sServerHome:~"

rsync bash_profile.sh $sServerHome/.bash_profile
aryFiles=(vim config vimrc bowerrc.json my.cnf)
for sFile in ${aryFiles[*]}; do
	rsync -r $sFile $sServerHome/.$sFile
done
