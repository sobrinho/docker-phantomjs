FROM debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y curl bzip2 libfreetype6 libfontconfig && \
    apt-get clean
    
RUN curl -sL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 | tar xj
RUN ln -s phantomjs-*-linux-x86_64 /phantomjs

VOLUME ["/srv"]

ENTRYPOINT ["/phantomjs/bin/phantomjs"]