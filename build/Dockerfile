FROM debian
MAINTAINER Alejandro Cabezas "alejandrocabezab@gmail.com"

RUN apt-get update && apt-get install -y apache2 \
libapache2-mod-php7.3 \
php7.3 \
php7.3-mysql \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 80

RUN rm /var/www/html/index.html
COPY bookmedik /var/www/html/
ADD script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

ENV DATABASE_USER=user_bookmedik
ENV DATABASE_PASSWORD=pass_bookmedik
ENV DATABASE_HOST=servidor_mysql

CMD ["script.sh"]
