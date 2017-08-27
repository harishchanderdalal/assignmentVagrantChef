#!/bin/bash
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
sudo sed -i '/%sudo   ALL=(ALL:ALL) ALL/ a jenkins ALL=(ALL) NOPASSWD:ALL' /etc/sudoers
