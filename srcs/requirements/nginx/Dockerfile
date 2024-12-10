
FROM debian:bullseye

RUN apt update -y && apt upgrade -y && apt install nginx openssl curl -y 


RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/private/idelfag.key -out /etc/ssl/certs/idelfag.crt -days 365 -nodes \
    -subj \
    "/C=MA/L=Benguerir/O=1337 School/CN=idelfag.42.fr/emailAddress=idelfag@student.1337.ma"
    
RUN chmod 755 /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]