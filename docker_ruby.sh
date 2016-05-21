#!/bin/bash
CIDFILE=`uuid`.cid
ruby exec.rb $1 | timelimit -t$2 -s9 docker run -i --cidfile=$CIDFILE --net none foo/runruby
CID=`head $CIDFILE`
docker rm -f $CID > /dev/null
rm $CIDFILE
