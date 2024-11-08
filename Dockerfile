FROM debian:bookworm-slim
RUN apt-get update
RUN apt-get install -y git dh-make build-essential autoconf autotools-dev dh-golang dh-make-golang
ADD setup.sh /opt/
RUN /bin/bash /opt/setup.sh

