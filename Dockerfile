FROM extvos/alpine:latest
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN apk update && \
    apk add --no-cache python3 py3-pip python3-dev alpine-sdk &&\
    pip3 install --no-cache-dir --upgrade pip &&\
    pip3 install --no-cache-dir mkdocs mkdocs-material  mkdocs-gitbook

VOLUME /docs
WORKDIR /docs
