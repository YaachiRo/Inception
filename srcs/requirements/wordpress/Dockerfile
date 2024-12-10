
FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt-get install -y php php-cli php-cgi php-fpm php-mysql php-curl php-xml \
    php-mbstring php-gd php-zip php-bz2 unzip wget curl mariadb-client 

COPY /conf/conf.www /etc/php/7.4/fpm/pool.d/
COPY /tools/script.sh /bin/script.sh
RUN chmod -x /bin/init.sh
RUN mkdir -p /run/php


WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz \
    && mv wordpress/* . \
    && rm -rf latest.tar.gz wordpress

RUN mv wp-config-sample.php wp-config.php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ; chmod +x wp-cli.phar ; mv wp-cli.phar /usr/local/bin/wp

ENTRYPOINT ["/bin/init.sh"]

CMD ["php-fpm7.4",  "-F"]