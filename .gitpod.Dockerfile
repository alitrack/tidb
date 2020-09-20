FROM gitpod/workspace-full:latest

USER root

# Install util tools.
RUN  apt-get update \
 &&  apt-get install -y apt-utils curl mysql-client \
 &&  apt-get clean \
 &&  rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

# Cleaning
RUN apt-get clean

USER root

# Install tiup
RUN curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh 
