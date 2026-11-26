FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Toronto

RUN apt-get update && apt-get install -y \
    gcc make gdb mosquitto-clients git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /broker
