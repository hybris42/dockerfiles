FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y minidlna openjdk-7-jre-headless unzip upstart-job wget && \
    wget https://launchpad.net/~bubbleguuum/+archive/bubbleupnpserver/+files/bubbleupnpserver_0.9-1_all.deb && \
    dpkg -i bubbleupnpserver_0.9-1_all.deb

# Prepare env
EXPOSE 8200 58050

# Launch chrome
CMD /usr/share/bubbleupnpserver/launch.sh
