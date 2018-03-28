FROM ubuntu

RUN apt-get update && apt-get install apache2 -y && service apache2 restart

RUN rm -rf var/www/html/*

ADD index.html /var/www/html/

ADD sample.html /var/www/html/

CMD apachectl -D FOREGROUND
