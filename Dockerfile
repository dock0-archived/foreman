FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed ruby
RUN gem install --no-user-install foreman
ADD run /service/sshd/run
