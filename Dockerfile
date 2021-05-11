FROM alpine:latest

MAINTAINER macwinnie <dev@macwinnie.me>

ENV CHECK_INTERVAL "1440"
ENV CHECK_PORTS    "1-1024"
ENV CHECK_HOSTS    "127.0.0.1"

ENV CHECK_DESTINATION "/var/www/html"

WORKDIR "/project"

EXPOSE 80

COPY files/ /install/
RUN  chmod a+x /install/install.sh && \
     /install/install.sh && \
     rm -rf /install

ENTRYPOINT [ "entrypoint" ]
CMD [ "scan-ports" ]
