FROM gitpod/workspace-full

USER gitpod

# Rootless Docker
# gets installed to /home/gitpod/bin
RUN curl -sSL https://get.docker.com/rootless | sh
# It requires the following env vars:
RUN ls -lh /tmp
ENV XDG_RUNTIME_DIR=/tmp/docker-rootless
ENV PATH=/home/gitpod/bin:$PATH
ENV DOCKER_HOST=unix:///tmp/docker-rootless/docker.sock
