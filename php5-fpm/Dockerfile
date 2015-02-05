FROM debian:wheezy

# Install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y php5-fpm php5-pgsql

# Launch php5-fpm
CMD /usr/sbin/php5-fpm -F --fpm-config /etc/php5/fpm/php-fpm.conf

