FROM ubuntu:18.04

RUN useradd -ms /bin/bash -p docker docker

USER root
WORKDIR /home/root

USER root

ADD install/install_prerequisites.sh install/install_prerequisites.sh
ADD install/openstack_clients.txt install/openstack_clients.txt

RUN apt-get update
RUN /bin/bash -c "source /home/root/install/install_prerequisites.sh"

user ubuntu
WORKDIR /home/docker
