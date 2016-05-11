#/bin/sh
apt-get update -yqq
apt-get upgrade -yqq
apt-get get install -yqq apt-transport-https netselect-apt
netselect-apt -ns -t 25 -o /etc/apt/sources.list jessie

cd /tmp
wget https://raw.githubusercontent.com/joshuacox/potential-octo-ironman/saruman/sshd_config
mv sshd_config /etc/ssh/
# debmon sources
wget -O - http://debmon.org/debmon/repo.key 2>/dev/null | apt-key add -
echo 'deb http://debmon.org/debmon debmon-jessie main' >/etc/apt/sources.list.d/debmon.list
apt-get update -yqq
apt-get get install -yqq icinga2 curl wget unzip vim rsync git sudo build-essential \
sudo ansible python-apt python-pycurl python-pip python-virtualenv

# roustabout
curl https://raw.githubusercontent.com/joshuacox/roustabout/master/bootstraproustabout.sh|bash
curl https://raw.githubusercontent.com/WebHostingCoopTeam/keys/master/addus.sh | bash

# Install docker
/usr/local/bin/DebianInstall
