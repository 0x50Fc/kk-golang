FROM golang:1.6.3-alpine

MAINTAINER hailongz "hailongz@qq.com"

RUN echo "Asia/shanghai" >> /etc/timezone

RUN go env

RUN go version

WORKDIR $GOPATH/src

