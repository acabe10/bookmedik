FROM debian
MAINTAINER Alejandro Cabezas "alejandrocabezab@gmail.com"

EXPOSE 80

RUN apt-get update && apt-get install -y apache2 \
libapache2-mod-php \
php \
php-mysql \
php-dom  \
php-gd \
php-simplexml \
php-xml \
php7.3-mbstring \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN rm /var/www/html/index.html
COPY drupal /var/www/html/
COPY drupal/sites /opt/drupal/sites
COPY drupal/profiles /opt/drupal/profiles
COPY drupal/modules /opt/drupal/modules
COPY drupal/themes /opt/drupal/themes

ADD script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh

CMD ["script.sh"]
