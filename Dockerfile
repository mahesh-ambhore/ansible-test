FROM ubuntu:16.04
LABEL "Author"="Mahesh Ambhore<ambhoremahesh17@gmail.com>"
LABEL version="1.0"
LABEL description="Preconfigured Ubuntu 16.04 with only the ssh client installed"

# Make sure we have bash as our default shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Get the packages needed for Ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install ssh
RUN apt-get -y install python && apt-get -y install python-mysqldb
EXPOSE 22:2222
