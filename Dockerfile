FROM golang

RUN chsh -s /bin/bash
RUN mkdir /app
ADD delve /go/src/github.com/derekparker/delve
RUN cd /go/src/github.com/derekparker/delve;find . -type f | xargs -n 5 touch;make install
ENV GOPATH=/go:/app
ENV PATH=$PATH:/app

VOLUME /app
WORKDIR /app
