#!/bin/bash

ip="local"
if [ ! -z $1 ]; then ip=$1; fi
echo "+gradle :thoughtspot-common:generateSources"
gradle :thoughtspot-common:generateSources
echo '+gradle :callosum-server:build  -x test'
gradle :callosum-server:build  -x test
cmd="rsync callosum/server/target/callosum-server-1.0-SNAPSHOT.war admin@${ip}:/usr/local/scaligent/release/callosum/server/target/callosum-server-1.0-SNAPSHOT.war"
echo "+$cmd"
eval "$cmd"
