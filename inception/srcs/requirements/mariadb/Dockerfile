FROM debian:bullseye
RUN apt update && apt upgrade && apt install mariadb-server -y
COPY conf/my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/my.sh .
RUN chmod 777 my.sh
ENTRYPOINT ["bash", "my.sh"]