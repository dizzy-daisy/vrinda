# Dockerfile
FROM php:8.1-apache
COPY public/ /var/www/html/
RUN docker-php-ext-install mysqli
EXPOSE 80