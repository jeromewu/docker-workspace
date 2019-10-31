FROM gitpod/workspace-full
RUN apt-get update && apt-get install -y kmod uidmap iptables
USER gitpod
ENV XDG_RUNTIME_DIR=/tmp/docker-33333
ENV PATH=/home/gitpod/bin:$PATH
ENV DOCKER_HOST=unix:///tmp/docker-33333/docker.sock
RUN curl -sSL https://get.docker.com/rootless | sh
