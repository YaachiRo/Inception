FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh /bin/script.sh

RUN chmod +x /bin/script.sh

ENTRYPOINT ["/bin/script.sh"]

CMD ["mysqld_safe"]