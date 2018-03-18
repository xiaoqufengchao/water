#!/bin/bash
file=$1

diff -w (md5sum $1) $1.md5
if [ $? -gt 0 ]; then echo "Problem checking retired GRACE" >&2 ; exit 44 ; fi
echo "$file OK"
