#!/bin/bash

cp -R /opt/drupal/sites /var/www/html/
cp -R /opt/drupal/modules /var/www/html/
cp -R /opt/drupal/themes /var/www/html/
cp -R /opt/drupal/profiles /var/www/html/
mkdir -p /var/www/html/sites/default/files/translations
chmod -R 777 /var/www/html/sites/default
cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
chmod -R 777 /var/www/html/sites/default/settings.php

apache2ctl -D FOREGROUND
