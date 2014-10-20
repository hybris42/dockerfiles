FROM     debian:sid

# Base install
RUN echo "deb http://ftp.fr.debian.org/debian/ sid main contrib" > /etc/apt/sources.list && \
    apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser ca-certificates iceweasel pulseaudio && \
    apt-get -q install -y flashplugin-nonfree

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris

# Prepare env
USER hybris
ENV DISPLAY :0.0
ENV PULSE_SERVER tcp:172.17.42.1
ENV LC_ALL C.UTF-8

# Launch ssh (used to open links from outside firefox)
CMD iceweasel
