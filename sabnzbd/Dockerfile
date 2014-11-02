FROM     debian:wheezy

# Install
RUN echo "deb http://http.debian.net/debian wheezy main contrib non-free" > /etc/apt/sources.list && \
    apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y sabnzbdplus unrar-free unrar

# sabnzbd
EXPOSE 8080
CMD sabnzbdplus
