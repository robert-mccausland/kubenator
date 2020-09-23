FROM golang:1.15-alpine

RUN apk update
RUN apk add git
RUN apk add bash

RUN go mod init github.com/robert-mccausland/kubenator
RUN go get github.com/chuckha/kubeyaml/cmd/kubeyaml@v0.0.0-20200610005415-9c10a094ddca

VOLUME /data

WORKDIR /src

COPY validate.sh .

RUN chmod +x validate.sh

CMD "./validate.sh"
