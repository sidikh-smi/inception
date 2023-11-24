FROM debian:bullseye

RUN apt-get update

RUN apt install wget -y

RUN apt-get   install -y php7.4\
    php-fpm\
    php-mysql\
    mariadb-client

COPY conf/conf.conf /etc/php/7.4/fpm/pool.d/www.conf


COPY conf/conf.sh   .


ENTRYPOINT [ "bash", "conf.sh" ]