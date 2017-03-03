#!/usr/bin/env bash

mysql -uroot -e "CREATE DATABASE myproject CHARACTER SET utf8 COLLATE utf8_general_ci"
sudo python /vagrant/myproject/manage.py migrate
