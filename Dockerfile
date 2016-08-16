FROM alpine:3.2
RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d/* /etc/nginx/conf.d/
COPY root /usr/share/nginx

CMD ["nginx", "-g", "daemon off;"]
