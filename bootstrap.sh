#!/usr/bin/env bash

apt-get update

# install python
apt-get install python-dev python-pip -q -y

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install mysql-server
apt-get install python-mysqldb