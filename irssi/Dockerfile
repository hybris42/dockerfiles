FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y irssi

# Configure irssi
ADD config /root/.irssi/config

# Run irssi
CMD irssi
