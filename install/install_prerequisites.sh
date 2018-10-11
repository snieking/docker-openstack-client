#!/bin/bash

apt-get install python-dev python-pip

pip install python-openstackclient

for i in $list; do
    pip install python-"$1"client
done

while read p; do
  pip install python-"$p"client
done <openstack_clients.txt
