FROM ubuntu:16.04
RUN apt-get update && apt-get install -y openssl curl kmod uidmap iptables
RUN useradd -m -d /home/user -p $(openssl passwd -1 password) user
USER user
RUN curl -sSL https://get.docker.com/rootless | sh
