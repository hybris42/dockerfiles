FROM     debian:wheezy

# Install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y git python \
    git clone https://github.com/rembo10/headphones.git /root/headphones


# headphones
EXPOSE 8181
CMD python /root/headphones
