#!/bin/bash
docker build -t foo/runruby .
CONTAINER=`docker run -i -d --net none foo/runruby`
#sleep 1
cat sample.txt | ruby exec.rb sample.rb | docker attach $CONTAINER
#sleep 1
docker rm -f $CONTAINER
