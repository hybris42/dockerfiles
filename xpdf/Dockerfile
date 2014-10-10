FROM     debian:sid

# Install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser xpdf

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris

# Prepare env
USER hybris
ENV DISPLAY :0.0
