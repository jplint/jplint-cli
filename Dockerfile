FROM golang:latest

ENV GO111MODULE=off

RUN mkdir /go/src/app
WORKDIR /go/src/app
COPY . .
