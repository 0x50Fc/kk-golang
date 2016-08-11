FROM library/ubuntu:14.04

MAINTAINER hailongz "hailongz@qq.com"

COPY ./etc/sources.list /etc/apt/sources.list

RUN apt-get clean

RUN apt-get upgrade

RUN apt-get update

RUN apt-get install -f -y golang git-core mercurial

RUN mkdir /go

RUN mkdir /go/src

RUN mkdir /go/pkg

RUN mkdir /go/bin

ENV GOPATH /go

ENV PATH $PATH:$GOPATH/bin

WORKDIR /go/src

RUN go env
