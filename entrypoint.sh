#!/bin/sh

cd /opt/srs-2.0-r1/trunk
if [ "$#" -eq 0 ]
then
    exec unbuffer ./objs/srs -c ./conf/docker.conf
else
    exec unbuffer ./objs/srs "$@"
fi
