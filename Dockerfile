FROM ubuntu:bionic-20180526

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ENV DEBIAN_FRONTEND noninteractive

USER root

COPY bootstrap.sh /var/tmp/bootstrap.sh
RUN /var/tmp/bootstrap.sh

COPY build-vim.sh /var/tmp/build-vim.sh
COPY Makefile /var/tmp/build/Makefile

RUN /var/tmp/build-vim.sh
