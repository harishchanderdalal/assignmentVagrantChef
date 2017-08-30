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

sleep 40s
sudo sed -i '27 i jenkins ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

sudo mv /vagrant/job/* /var/lib/jenkins/jobs/
sudo chown jenkins:jenkins /var/lib/jenkins/jobs/*

sudo mv /vagrant/config.xml /var/lib/jenkins/users/admin/
sudo chown jenkins:jenkins /var/lib/jenkins/users/admin/config.xml

sudo mv /vagrant/plugin/* /var/lib/jenkins/plugins/
sudo chown jenkins:jenkins /var/lib/jenkins/plugins/*

sudo service jenkins restart
sleep 20s
sudo service jenkins restart

ip=`curl ifconfig.me`
echo "your jenkins URL = $ip:8080"
echo Jenkins Getting Ready to Use Please Wait .......
echo Yeppi !!!! Your Jenkins is ready to Use !!!!
