FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
  nginx

RUN unlink /etc/nginx/sites-enabled/default

COPY containerfs/ /
RUN find /var/www/wisdompetmed.local/ -type d -exec chmod 755 {} \;
RUN find /var/www/wisdompetmed.local/ -type f -exec chmod 644 {} \;

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
