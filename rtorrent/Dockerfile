FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y rtorrent

# Launch libreoffice
WORKDIR /media
CMD rtorrent
