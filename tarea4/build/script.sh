#!/bin/bash

cp -R /sites /var/www/html/
mkdir -p /var/www/html/sites/default/files/translations
chmod -R 777 /var/www/html/sites/default
cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
chmod -R 777 /var/www/html/sites/default/settings.php

apache2ctl -D FOREGROUND
