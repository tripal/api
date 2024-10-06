FROM ubuntu:latest

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  doxygen graphviz git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/tripal/tripal /data \
  && mkdir api

WORKDIR /data
