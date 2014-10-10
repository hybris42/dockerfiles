FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser libreoffice

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris

# Prepare env
USER hybris
ENV LC_ALL C.UTF-8
ENV DISPLAY :0.0

# Launch libreoffice
CMD libreoffice
