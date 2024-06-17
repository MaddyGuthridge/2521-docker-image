# Dockerfile
# This is the build script for creating the docker image.
#
# Author: Maddy Guthridge
FROM ubuntu:latest

RUN apt update
# CSE connection tools
RUN apt install -y ssh git rsync
# Build + debug tools
RUN apt install -y make llvm clang
# Core programs (installed last, since they are most likely to change)
RUN apt install -y file less unzip zip time nano

# Change to the 'ubuntu' user (created by the image)
USER ubuntu

# Give a nice bash config, with some helper commands
COPY --chown=ubuntu:ubuntu dot.bashrc /home/ubuntu/.bashrc

# Set up .2521-config symlinks
# Bash history
RUN ln -s ~/.2521-config/bash_history ~/.bash_history

WORKDIR /home/ubuntu/work

CMD [ "bash" ]
