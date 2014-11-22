FROM     debian:sid

ADD http://limbomedia.net/files/limbomedia-1.5-bin.zip /tmp/

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y ffmpeg imagemagick openjdk-7-jre-headless unzip && \
    unzip /tmp/limbomedia-1.5-bin.zip -d /media && \
    mkdir /media/data

# Prepare env
EXPOSE 8000 8001

# Launch chrome
CMD java -Dlm.dir.data=/media/data -Dlm.upnp.enabled=false -jar /media/limbomedia-1.5/limbomedia.jar
