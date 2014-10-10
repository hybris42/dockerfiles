FROM     debian:sid

EXPOSE 9292

# Base install
RUN apt-get -q update && \
    apt-get upgrade -y && \
    apt-get -q install -y curl git nodejs sudo

# Prepare user
RUN mkdir /var/www && \
    chown -R www-data:www-data /var/www && \
    sed -i 's|www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin|www-data:x:33:33:www-data:/var/www:/bin/bash|' /etc/passwd && \
    echo "www-data	ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/www-data
USER www-data

# Get devdocs
RUN cd /var/www && \
    curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1.2 && \
    git clone https://github.com/Thibaut/devdocs.git /var/www/devdocs && \
    bash -c "source /var/www/.rvm/scripts/rvm && cd /var/www/devdocs && \
        gem install bundle && bundle install && thor docs:download --all"

# Get latest doc and launch
CMD bash -c "source /var/www/.rvm/scripts/rvm && \
        cd /var/www/devdocs && thor docs:download --all && \
        rackup"
