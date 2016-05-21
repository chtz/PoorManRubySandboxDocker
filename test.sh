#!/bin/bash
docker build -t foo/runruby .
cat sample.txt | ruby exec.rb sample.rb | timelimit -t3 -s9 docker run -i --rm --net none foo/runruby
