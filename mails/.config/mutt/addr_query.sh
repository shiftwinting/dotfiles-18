#!/bin/sh
PATH=/usr/local/bin:/bin/:/usr/bin/

notmuch address --sort=newest-first --output=sender --output=recipients --deduplicate=address "$1" | $(dirname $0)/addr_filter.pl "$1"
