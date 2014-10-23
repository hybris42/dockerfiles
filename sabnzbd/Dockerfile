FROM     debian:wheezy

# Install
RUN echo "deb http://http.debian.net/debian wheezy main contrib" > /etc/apt/sources.list && \
    apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y sabnzbdplus unrar-free

# sabnzbd
EXPOSE 8080
CMD sabnzbdplus
