FROM gitpod/workspace-full
RUN sudo apt-get update && sudo apt-get install -y ctags
USER gitpod
WORKDIR /home/gitpod
RUN wget https://github.com/jeromewu/vimrc/archive/v0.3.zip \
&& unzip v0.3.zip \
&& cd vimrc-0.3 \
&& bash install.sh
