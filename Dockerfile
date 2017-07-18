#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

FROM debian:stretch
MAINTAINER SFox Lviv <sfox.lviv@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y pdftk mc\
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && mkdir /input \
    && mkdir /output


COPY run.sh /run.sh


VOLUME ["/input","/output"]

ENTRYPOINT ["/run.sh"]

CMD []
