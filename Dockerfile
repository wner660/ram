FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt install gdebi -y
RUN apt upgrade
RUN apt install wget
RUN apt install clinfo
RUN wget https://github.com/SaladTechnologies/salad-applications/releases/download/0.5.6/Salad-0.5.6_amd64.deb
RUN sudo dpkg -i Salad-0.5.6_amd64.deb
RUN salad
