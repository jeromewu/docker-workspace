FROM ubuntu:16.04
RUN apt-get update && apt-get install -y openssl curl kmod uidmap iptables
RUN useradd -m -d /home/gitpod -p $(openssl passwd -1 password) gitpod
USER gitpod
ENV XDG_RUNTIME_DIR=/tmp/docker-33333
ENV PATH=/home/user/bin:$PATH
ENV DOCKER_HOST=unix:///tmp/docker-33333/docker.sock
RUN curl -sSL https://get.docker.com/rootless | sh
