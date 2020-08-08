FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN apk update && \
    apk add --no-cache python3 py3-pip py3-dev alpine-sdk &&\
    pip3 install --no-cache-dir --upgrade pip &&\
    pip3 install --no-cache-dir mkdocs 

VOLUME /docs
