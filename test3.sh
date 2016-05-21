#!/bin/bash
docker build -t foo/runruby .
CIDFILE=`uuid`.cid
cat sample.txt | ruby exec.rb sample.rb | timelimit -t3 -s9 docker run -i --cidfile=$CIDFILE --net none foo/runruby
CID=`head $CIDFILE`
docker rm -f $CID
rm $CIDFILE
