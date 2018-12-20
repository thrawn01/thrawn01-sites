FROM alpine:3.2
RUN apk update && apk add --update gettext nginx && rm -rf /var/cache/apk/*
COPY entrypoint.sh /entrypoint.sh

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d/* /etc/nginx/conf.d/
COPY root /usr/share/nginx

CMD ["/entrypoint.sh"]
