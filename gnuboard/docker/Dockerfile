FROM php:7.0-apache
LABEL author="https://github.com/joosangkim"

RUN docker-php-ext-install mysqli

ENV APACHE_DOCUMENT_ROOT /var/www
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN apt-get update 
RUN apt-get install vim -y
RUN apt-get upgrade -y

EXPOSE 22 80 443