#!/bin/bash
echo BEGIN
sudo apt-get update
sudo apt-get install -y language-pack-en
sudo apt-get install -y python-software-properties
sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
ip=`curl ifconfig.me`
echo "your jenkins URL = $ip:8080"
sleep 2m
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
suod sed -i '27 i jenkins ALL=(ALL) NOPASSWD:ALL' /etc/sudoers
echo END
