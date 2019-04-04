FROM docker:stable-dind 
LABEL maintainer="michel.laporte@essenceglobal.com"
LABEL version="1.0"
RUN apk update && apk add --no-cache bash git gcc musl-dev python-dev build-base util-linux libffi-dev openssl-dev openssl grep py2-pip || true
RUN pip install docker-compose
