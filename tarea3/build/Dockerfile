FROM nginx
MAINTAINER Alejandro Cabezas "alejandrocabezab@gmail.com"

EXPOSE 80

RUN rm /etc/nginx/conf.d/default.conf
COPY bookmedik /opt/bookmedik
COPY default.conf /etc/nginx/conf.d/default.conf

ADD script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh

ENV DATABASE_USER=user_bookmedik
ENV DATABASE_PASSWORD=pass_bookmedik
ENV DATABASE_HOST=servidor_mysql

CMD ["script.sh"]
