FROM     debian:sid

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y adduser mtpaint

# Add user (same name, uid, gid !!)
RUN adduser --disabled-password --gecos hybris hybris

# Prepare env
USER hybris
ENV DISPLAY :0.0
ENV LC_ALL C.UTF-8

# Run mtpaint
CMD mtpaint
