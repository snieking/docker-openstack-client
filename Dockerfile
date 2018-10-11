FROM ubuntu:18.04

RUN useradd -ms /bin/bash -p docker docker
USER docker
WORKDIR /home/docker

COPY install_prerequisites.sh .
COPY openstack_clients.txt .

RUN ./install_prerequisites.sh
