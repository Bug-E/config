ip="local"
if [ ! -z $1 ]; then ip=$1; fi
binaryName="cs"
if [ ! -z $2 ]; then binaryName=$2; fi
echo "+gradle :thoughtspot-common:generateSources"
gradle :thoughtspot-common:generateSources

echo '+gradle :callosum-server:clean :callosum-server:build  -x test'
gradle :callosum-server:clean :callosum-server:build  -x test
cmd="rsync callosum/server/target/callosum-server-1.0-SNAPSHOT.war admin@${ip}:/usr/local/scaligent/release/callosum/server/target/callosum-server-1.0-SNAPSHOT.war"
echo "+$cmd"
eval "$cmd"
echo "Follow rest of the commands on the remote:"
echo "+ssh admin@${ip}"
echo "+cd /usr/local/scaligent/release/"
echo "+tscli --adv service push tomcat production/orion/tomcat/tomcat_dev.config"
