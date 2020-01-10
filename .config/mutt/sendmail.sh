#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin

tee >(notmuch insert --folder=$1/sent --create-folder --no-hooks +sent -unread -inbox)  | msmtp -a $*
