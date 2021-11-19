FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt update
RUN apt install gdebi -y
RUN apt upgrade
RUN apt install wget -y
RUN apt install clinfo -y
RUN apt install libnotify4 -y
RUN apt install libnss3 -y
RUN apt install libxss1 -y
RUN apt install xdg-utils -y
RUN apt install libappindicator3-1 -y
RUN apt install libsecret-1-0 -y
RUN wget https://github.com/SaladTechnologies/salad-applications/releases/download/0.5.6/Salad-0.5.6_amd64.deb
RUN dpkg -i Salad-0.5.6_amd64.deb
RUN salad
