FROM     debian:wheezy

# Install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y git python \
    git clone https://github.com/RuudBurger/CouchPotatoServer.git /root/couchpotato


# sabnzbd
EXPOSE 5050
CMD python /root/couchpotato/CouchPotato.py
