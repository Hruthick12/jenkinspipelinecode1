#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://jenkins-test-8/java_build/ my-app-1.0-SNAPSHOT.jar.
scp my-app-1.0-SNAPSHOT.jar ec2-user@10.0.0.161:/home/ec2-user/tomcat/apache-tomcat-9.0.74/webapps
ssh ec2-user@10.0.0.161 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.74/bin/
    ./shutdown.sh
    ./startup.sh
HERE

