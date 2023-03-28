FROM alpine:latest
MAINTAINER Gennaro Vietri <gennaro.vietri@bitbull.it>

RUN apk --update add socat

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8888

CMD ["sh", "-c", "tail -f /dev/null"]
