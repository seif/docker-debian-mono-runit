FROM seif/mono

MAINTAINER Seif Attar <iam@seifattar.net>

ENV DEBIAN_FRONTEND noninteractive

ADD runit.sh /dockerbase
ADD /dockerbase/runit.sh

# Config runit

ADD build/runit/1 /etc/runit/1
ADD build/runit/1.d/cleanup-pids /etc/runit/1.d/cleanup-pids
ADD build/runit/2 /etc/runit/2
