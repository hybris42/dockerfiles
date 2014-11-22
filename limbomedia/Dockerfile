FROM     debian:sid

ADD http://limbomedia.net/files/limbomedia-1.5-bin.zip /tmp/

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y ffmpeg imagemagick openjdk-7-jre-headless unzip && \
    unzip /tmp/limbomedia-1.5-bin.zip -d /tmp/

# Prepare env
EXPOSE 8000 8001

# Launch chrome
CMD java -Dlm.dir.data=/media -Dlm.upnp.enabled=false -jar /tmp/limbomedia-1.5/limbomedia.jar
