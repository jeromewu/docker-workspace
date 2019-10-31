FROM gitpod/workspace-full
RUN sudo apt-get update && sudo apt-get install -y ctags
USER gitpod
WORKDIR /home/gitpod
RUN wget https://github.com/jeromewu/vimrc/archive/v0.2.zip
RUN unzip v0.2.zip
WORKDIR /home/gitpod/vimrc-0.2
RUN yes "" | bash install.sh
