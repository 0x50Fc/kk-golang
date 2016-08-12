FROM golang:1.6.3-alpine

MAINTAINER hailongz "hailongz@qq.com"

RUN go env

RUN go version
