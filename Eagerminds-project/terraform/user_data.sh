#!/bin/bash
yum update -y
yum install docker -y
service docker start
usermod -a -G docker ec2-user
cd /home/ec2-user
yum install -y git
git clone https://github.com/Tarungagiya/Eagerminds-project-repo.git
cd Eagerminds-project-repo/Eagerminds-project/app
docker build -t node-app .
docker run -d -p 80:3000 node-app
