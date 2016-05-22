FROM alpine:3.3
ENV MIRROR="http://dl-4.alpinelinux.org/alpine/v3.3/main"
RUN apk --update add ruby && gem install --no-ri --no-rdoc json_pure && rm -fr /usr/share/ri && rm -rf /var/cache/apk/*
COPY run.rb /
CMD ["ruby", "/run.rb"]
