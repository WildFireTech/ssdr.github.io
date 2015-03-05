#!/bin/sh

if [ $# == 0 ];
then
	echo "Usage: $0 message"
	exit 1;
fi

echo $*

git add .; git commit -m "$*"; git push
