FROM alpine:edge
RUN apk --update add ruby && rm -fr /usr/share/ri && rm -rf /var/cache/apk/*
COPY run.rb /
CMD ["ruby", "/run.rb"]
