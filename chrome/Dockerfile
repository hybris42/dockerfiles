FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser gconf-service libasound2 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgconf-2-4 libgdk-pixbuf2.0-0 libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxss1 libxtst6 libappindicator1 libcurl3 pulseaudio wget xdg-utils && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb && \
    dpkg -i /tmp/chrome.deb

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris

# Prepare env
USER hybris
ENV DISPLAY :0.0
ENV PULSE_SERVER tcp:172.17.42.1
ENV LC_ALL C.UTF-8

# Launch chrome
CMD /usr/bin/google-chrome --disable-setuid-sandbox
