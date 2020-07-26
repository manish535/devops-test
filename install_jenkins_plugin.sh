#!/bin/bash

read -p 'Jenkins Username: : ' username
read -sp 'Jenkins Password: ' password

wget http://localhost:8080/jnlpJars/jenkins-cli.jar

for i in `cat $PWD/jenkins_plugin.list`
do
    java -jar jenkins-cli.jar -s "http://localhost:8080" -auth $username:$password  install-plugin parameterized-trigger $i
done

echo "Restarting Jenkins"
java -jar jenkins-cli.jar -s "http://localhost:8080" -auth $username:$password  restart
