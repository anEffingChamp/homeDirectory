#!/bin/bash --
git status | less -msr &&
git diff &&
gitbranch.sh | less -msr &&
git log --stat -p
