FROM     debian:wheezy

# Install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y git python python-cheetah \
    git clone https://github.com/midgetspy/Sick-Beard.git /root/sickbeard


# sabnzbd
EXPOSE 8081
CMD python /root/sickbeard/SickBeard.py
