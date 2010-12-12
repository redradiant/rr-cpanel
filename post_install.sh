#!/bin/bash

yes | echo -e "\n" | ssh-keygen -N '' -t rsa

yum -y install curl

wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.1-1.el5.rf.x86_64.rpm
rpm -ivh http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.1-1.el5.rf.x86_64.rpm

wget http://packages.sw.be/apt/apt-0.5.15lorg3.94a-5.el5.rf.x86_64.rpm
rpm -ivh apt-0.5.15lorg3.94a-5.el5.rf.x86_64.rpm

yum install `wget -q --no-check-certificate -O - https://github.com/redradiant/rr-cpanel/raw/master/base.yum`
yum -y --disableexcludes=main install git

echo "source '/usr/local/lib/rvm'" >> /etc/bashrc
source '/usr/local/lib/rvm'

rvm install ree,1.9.2-p0
rvm --default use 1.9.2-p0

gem install cucumber rspec sprinkle capistrano rails

