alias csslint='csslint --ignore=box-model'
alias ifconfig='curl ifconfig.me'
# http://www.hpl.hp.com/research/linux/httperf/httperf-man-0.9.txt
alias httperf='httperf --hog --num-conns=100 --retry-on-failure --timeout=3'
alias mosh='mosh --predict=always'
alias mysql='mysql --compress --reconnect --safe-updates --password'
alias mysqldump='mysqldump --opt --verbose'
alias npm-install='sudo npm upgrade -g'
# http://nmap.org/book/man-port-scanning-techniques.html
alias nmap='sudo nmap -sUSYV -O --osscan-limit -T4 --spoof-mac 0 -oA %s-nmap'
alias phpcs='phpcs --standard=Zend'
alias phpunit='phpunit --colors=auto --reverse-list'
alias piwik='php ~/webRoot/piwik/console'
alias sass-update='sass assets/index.scss assets/index.css'
alias tidy='tidy -errors -modify -indent 4 -wrap 80'
# Vimdiff() takes a file path to an argument. It assumes that the file is
# also available at a corresponding path on the beta, and live servers.
# Currently it points to NOAA servers, although this is easy enough to change.
function Vimdiff()
{
    filePath='~/webRoot/'
    vimdiff $1 scp://beta/$filePath/$1 scp://production/$filePath/$1
}
