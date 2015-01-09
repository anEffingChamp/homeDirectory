#!/bin/bash --

if [ '' != $(which aptitude ) ]; then
	sudo aptitude update &&
		sudo aptitude upgrade
fi
