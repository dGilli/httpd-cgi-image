FROM  alpine:3.7

RUN apk add --no-cache apache2 apache2-utils bash supervisor

COPY www /var/www
COPY httpd-entrypoint.sh /httpd-entrypoint.sh

RUN chmod o+x /var /var/www \
    && chown -R apache.apache /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80

ENTRYPOINT ["/httpd-entrypoint.sh"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
