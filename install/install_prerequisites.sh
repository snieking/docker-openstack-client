#!/bin/bash
apt-get -y install python-dev python-pip

pip install python-openstackclient

while read p; do
  pip install python-"$p"client
done </home/root/install/openstack_clients.txt
