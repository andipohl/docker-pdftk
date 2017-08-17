FROM debian:stretch
MAINTAINER SFoxDev <admin@sfoxdev.com>

ENV DEBIAN_FRONTEND=noninteractive

COPY run.sh /run.sh

RUN apt-get update \
    && apt-get install -y pdftk mc\
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && mkdir /input \
    && mkdir /output 

VOLUME ["/input","/output"]

ENTRYPOINT ["/usr/bin/pdftk"]

#CMD ["/bin/bash"]
