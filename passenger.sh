#!/bin/bash

set -o errtrace
set -o errexit


export APXS2=/usr/local/apache/bin/apxs
export APR_CONFIG=/usr/local/apache/bin/apr-1-config

gem install passenger
passenger-install-apache2-module

echo "http://www.modrails.com/documentation.html"
echo "Now compile and run: "


echo "/usr/local/apache/conf/includes/pre_virtualhost_global.conf"
