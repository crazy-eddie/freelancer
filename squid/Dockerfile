
FROM registry:5000/freelancer/base:alpine

RUN apk add squid
RUN echo "maximum_object_size 1024 MB" >> /etc/squid/squid.conf \
 && echo "cache_dir aufs /squid-data 100 16 256" >> /etc/squid/squid.conf

# For the time being you need to initialize the cache using
# docker run -v $(pwd)/cache:/var/cache/squid <img name> -zN
# before running without command.

VOLUME /squid-data


CMD squid -N