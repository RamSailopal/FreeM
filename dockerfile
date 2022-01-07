FROM docker.io/ubuntu
RUN apt-get update && apt-get install -y wget gcc make && cd /tmp && wget https://freem.coherent-logic.com/downloads/freem-0.51.0.tar.gz && tar -zxf freem-0.51.0.tar.gz && cd freem-0.51.0 && ./configure && make && make install && fmadm configure 
WORKDIR /tmp/freem-0.51.0
ENTRYPOINT /bin/bash -c "reset && freem"

