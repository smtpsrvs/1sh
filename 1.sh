#!/bin/bash
sed -i '1d;$d' $1
awk '!/^#/{print $4,$3}/^#/' $1 | tr -s "\t " ":" | sort -n  > out.txt
exit 0;
