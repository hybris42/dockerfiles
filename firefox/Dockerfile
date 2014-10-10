FROM     debian:sid

# Base install
RUN echo "deb http://ftp.fr.debian.org/debian/ sid main contrib" > /etc/apt/sources.list && \
    apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser ca-certificates iceweasel openssh-server pulseaudio && \
    apt-get -q install -y flashplugin-nonfree

# Prepare SSH server
RUN mkdir /var/run/sshd
ADD id_dsa.pub /root/.ssh/authorized_keys

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris
ADD id_dsa.pub /home/hybris/.ssh/authorized_keys

# Prepare env
RUN echo "DISPLAY=:0.0" >> /etc/environment && \
    echo "PULSE_SERVER=tcp:172.17.42.1" >> /etc/environment && \
    echo "LC_ALL=C.UTF-8" >> /etc/environment

# Launch ssh (used to open links from outside firefox)
CMD /usr/sbin/sshd -D
