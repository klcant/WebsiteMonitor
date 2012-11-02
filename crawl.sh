#!/bin/bash

wget --spider --recursive --no-verbose --output-file=wgetlog.txt http://www.website.com
sed -n "s@.\+ URL:\([^ ]\+\) .\+@\1@p" wgetlog.txt | sed "s@&@\&amp;@" > urls.txt
