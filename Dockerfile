FROM alpine:latest

COPY entrypoint.sh /app/entrypoint.sh

RUN set -ex \
  && apk add --no-cache --virtual .build-deps ca-certificates tzdata openssl \
  && chmod +x /app/entrypoint.sh

CMD [ "/app/entrypoint.sh" ]