FROM ubuntu:15.04
# From here we load our application's code in, therefore the previous docker
# "layer" thats been cached will be used if possible
RUN apt-get update -yq && apt-get upgrade -yq
ADD ./MOTD /opt/MOTD
RUN cat MOTD
