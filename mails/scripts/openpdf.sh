#!/bin/sh

PATH=/bin/:/usr/local/bin:$PATH

zathura $(fd ".*\.pdf" $HOME | dmenu -f -l 10 -i)
