FROM debian:buster

ARG INDEX
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install nginx
RUN apt-get -y install wget
RUN apt-get -y install default-mysql-server
RUN apt-get -y install php7.3 php-mysql php-fpm php-cli php-mbstring
COPY srcs/start.sh ./
COPY srcs/nginx.conf /etc/nginx/sites-enabled/localhost
COPY srcs/config.inc.php /var
COPY srcs/wp-config.php /var 
ENV autoindex $INDEX

CMD bash start.sh

EXPOSE 80 443