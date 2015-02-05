php5-fpm
========
Run a fastcgi server in docker

* Put your php code in /var/www/FOOBAR on host
* Run a docker container with: "docker run --rm -t --name FOOBAR-php --link db:db -v /var/run/php/FOOBAR:/var/run -v /var/www/FOOBAR:/var/www/FOOBAR florina:php5-fpm"
* Configure your nginx vhost with: "fastcgi_pass unix:/var/run/php/FOOBAR/php5-fpm.sock;"
