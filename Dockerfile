FROM ubuntu:16.04
RUN useradd -m -d /home/user -p $(openssl passwd -1 password) user
USER user
RUN curl -sSL https://get.docker.com/rootless | sh
