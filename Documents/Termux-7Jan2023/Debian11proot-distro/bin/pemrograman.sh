#!/usr/bin/bash

location='/media/abdulloh/Data/Belajar/Pemrograman'

case "$1" in
	js)
		argument='JavaScript'
	;;
	java)
		argument='Java'
	;;
esac

cd $location/$argument
$SHELL
# A bash script operates on its current environment or on that of its children, but never on its parent environment.
# the script can be made to work with whatever preferred shell by using the $SHELL environment variable.
