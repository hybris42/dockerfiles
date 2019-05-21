FROM     debian:stretch

# Base install
RUN apt-get -q update && \
    apt-get -q upgrade -y && \
    apt-get -q install -y --no-install-recommends texlive texlive-latex-extra texlive-lang-french && \
    apt-get clean

WORKDIR /mnt
