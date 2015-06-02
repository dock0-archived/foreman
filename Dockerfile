FROM dock0/service
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed ruby
RUN gem install --no-user-install foreman
ADD run /service/sshd/run
ENV RACK_ENV production
CMD ["foreman", "start", "--root=/srv/app"]
