#!/bin/bash
if [[ $1 == "" ]]; then
	echo Usage:
	echo   ./makeStable.sh newStableVersion
else
	git push origin :stable
	git branch -d stable
	git checkout $1
	git checkout -b stable
	git push origin stable
fi
