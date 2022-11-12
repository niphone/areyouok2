FROM alpine:latest

COPY entrypoint.sh /app/entrypoint.sh

RUN set -ex \
  && apk add --no-cache tzdata openssl ca-certificates \
  && mkdir -p /etc/v2ray /usr/local/share/v2ray /var/log/v2ray \
  && chmod +x /app/entrypoint.sh

ENTRYPOINT [ "sh", "-c", "/app/entrypoint.sh" ]