#FROM debian:stable-20220912-slim
FROM debian:stable-slim
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apache2 curl git zip -y 
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./apache2.conf /etc/apache2/apache2.conf
COPY ./initiate_laravel.sh /
RUN a2enmod rewrite
RUN apt-get install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/sury-php.list
RUN curl -fsSL  https://packages.sury.org/php/apt.gpg| gpg --dearmor -o /etc/apt/trusted.gpg.d/sury-keyring.gpg
RUN apt-get update
RUN apt-get install php8.2 -y
RUN apt-get install \ 
    php8.2-dom \
    php8.2-zip \
    php8.2-curl \
    php8.2-mysql \
    php8.2-mbstring \
    php8.2-gd \
    php8.2-xdebug \
    -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
EXPOSE 80
WORKDIR /var/www
CMD apachectl -D FOREGROUND
