#/bin/sh
apt-get update
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y sudo ansible python-apt python-pycurl python-pip python-virtualenv
