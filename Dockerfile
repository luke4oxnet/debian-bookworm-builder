FROM debian:bookworm
ADD setup.sh /opt/
RUN /bin/bash /opt/setup.sh

