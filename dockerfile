FROM golang:1.14.6-alpine

RUN apk update
RUN apk add git
RUN apk add bash

RUN go get github.com/chuckha/kubeyaml/cmd/kubeyaml

VOLUME /data

WORKDIR /src

COPY validate.sh .

RUN chmod +x validate.sh

CMD "./validate.sh"