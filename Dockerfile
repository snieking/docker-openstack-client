FROM ubuntu:18.04

RUN useradd -ms /bin/bash -p docker docker
USER docker
WORKDIR /home/docker

COPY install/install_prerequisites.sh .
COPY install/openstack_clients.txt .

RUN install/install_prerequisites.sh
