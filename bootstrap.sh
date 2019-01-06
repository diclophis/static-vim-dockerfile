#!/bin/sh

set -e
set -x

apt-get update \
  && apt-get upgrade --no-install-recommends -y \
  && apt-get install --no-install-recommends -y \
    build-essential \
    git \
    make \
    libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev \
    ca-certificates \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
