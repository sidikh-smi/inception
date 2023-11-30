FROM debian:bullseye

RUN apt update && apt install nginx -y && apt install openssl -y

RUN mkdir /etc/nginx/ssl/

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/CN=skhaliff.42.fr"

COPY conf/nginx.conf /etc/nginx/conf.d/nginx.conf

ENTRYPOINT nginx -g "daemon off;"