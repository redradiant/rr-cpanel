#!/bin/bash

yes | echo -e "\n" | ssh-keygen -N '' -t rsa

yum -y install curl build-essentials

wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.1-1.el5.rf.x86_64.rpm
rpm -ifvh http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.1-1.el5.rf.x86_64.rpm

wget http://packages.sw.be/apt/apt-0.5.15lorg3.94a-5.el5.rf.x86_64.rpm
rpm -ifvh apt-0.5.15lorg3.94a-5.el5.rf.x86_64.rpm

yum -y install mrepo yum-utils
yum -y --disableexcludes=main install git

bash < <( curl -L http://bit.ly/rvm-install-system-wide )

echo "source '/usr/local/lib/rvm'" >> /etc/bashrc
source '/usr/local/lib/rvm'

rvm install ree,1.9.2-p0
rvm --default use 1.9.2-p0

yum -y install postgresql84.x86_64 postgresql84-devel.x86_64 postgresql84-libs.x86_64 postgresql84-server.x86_64

gem install cucumber rspec sprinkle capistrano rails

export APXS2=/usr/local/apache/bin/apxs
export APR_CONFIG=/usr/local/apache/bin/apr-1-config

gem install passenger
passenger-install-apache2-module

echo "http://www.modrails.com/documentation.html"
echo "Now compile and run: "

echo "/usr/local/apache/conf/includes/pre_virtualhost_global.conf"
