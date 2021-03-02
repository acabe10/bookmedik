#!/bin/bash

cp -R /opt/bookmedik/* /code
sed -i "s/$this->user=\"root\";/$this->user=\"$DATABASE_USER\";/g" /usr/share/nginx/html/core/controller/Database.php
sed -i "s/$this->pass=\"\";/$this->pass=\"$DATABASE_PASSWORD\";/g" /usr/share/nginx/html/core/controller/Database.php
sed -i "s/$this->host=\"localhost\";/$this->host=\"$DATABASE_HOST\";/g" /usr/share/nginx/html/core/controller/Database.php

nginx -g 'daemon off;'
