FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
  nginx

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
