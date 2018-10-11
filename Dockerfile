FROM ubuntu:18.04

RUN useradd -ms /bin/bash -p docker docker
USER docker
WORKDIR /home/docker

