FROM fedora:latest
RUN dnf update -y
RUN dnf install -y fritzing
ENTRYPOINT ["/usr/bin/Fritzing"]
