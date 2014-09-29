#!/bin/bash --

aryType="*php
**/*php
**/**/*php"
for szType in $aryType; do
	php -l $szType
done
