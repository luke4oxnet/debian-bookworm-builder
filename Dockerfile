FROM debian:bookworm-slim
ARG DEBIAN_FRONTEND=noninteractive
RUN echo "deb http://deb.debian.org/debian/ stable main contrib" >/etc/apt/sources.list && rm /etc/apt/sources.list.d/debian.sources
RUN apt-get update
RUN apt-get install -y git dh-make build-essential autoconf autotools-dev dh-golang dh-make-golang
ADD setup.sh /opt/
RUN /bin/bash /opt/setup.sh

