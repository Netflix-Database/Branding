FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY logo/ /usr/share/nginx/html/logo/

RUN mkdir -p /var/cache/nginx && \
    chown -R nginx:nginx /var/cache/nginx

CMD ["nginx", "-g", "daemon off;"]
