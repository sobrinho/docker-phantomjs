FROM debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install curl bzip2 libfreetype6 libfontconfig
RUN curl -sL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 | tar xj
RUN ln -s phantomjs-*-linux-x86_64 /phantomjs

VOLUME ["/srv"]

ENTRYPOINT ["/phantomjs/bin/phantomjs"]