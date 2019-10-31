FROM gitpod/workspace-full
RUN sudo apt-get update && sudo apt-get install -y kmod uidmap iptables

USER gitpod

# Rootless Docker
# gets installed to /home/gitpod/bin
RUN curl -sSL https://get.docker.com/rootless | sh
# It requires the following env vars:
ENV XDG_RUNTIME_DIR=/tmp/docker-33333
ENV PATH=/home/gitpod/bin:$PATH
ENV DOCKER_HOST=unix:///tmp/docker-33333/docker.sock
