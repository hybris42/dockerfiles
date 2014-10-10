FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser pulseaudio vlc

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris

# Prepare env
USER hybris
ENV DISPLAY :0.0
ENV PULSE_SERVER tcp:172.17.42.1

# Launch vlc with http interface
CMD cvlc -I http --http-password foobar
