FROM registry:5000/freelancer/base:alpine

RUN apk --no-cache add gnupg \
 && addgroup -S -g 1000 identity \
 && adduser -h /home/identity -u 1000 -G identity -D identity \
 && passwd -u identity


USER identity

ENTRYPOINT gpg-agent --daemon
