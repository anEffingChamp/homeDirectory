#!/bin/bash --
# Check two levels deep, and lint PHP files for syntax errors.
aryType="*php
**/*php
**/**/*php"
for szType in $aryType; do
if [ -f $szType ]; then
	php -l $szType
fi
done
