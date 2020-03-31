FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
  nginx

RUN unlink /etc/nginx/sites-enabled/default

COPY containerfs/ /

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
