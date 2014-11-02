FROM     debian:wheezy

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    echo 'mysql-server-5.5 mysql-server/root_password password mypass' | debconf-set-selections && \
    echo 'mysql-server-5.5 mysql-server/root_password_again password mypass' | debconf-set-selections && \
    apt-get -q install -y mysql-server mysql-client && \
    sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

# Prepare env
EXPOSE 3306

# Launch chrome
CMD chown -R mysql:mysql /var/lib/mysql && mysqld
