#! /bin/sh
##############
#Tarring files
##############
xargs tar -czf $1.tar.gz
&& echo $1.tar.gz
&& exit 0