FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y gcc g++ git wget python3-pip
RUN pip3 install awscli --upgrade --user && ln -s /root/.local/bin/aws /usr/bin
RUN wget https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz && tar -xvf go1.11.4.linux-amd64.tar.gz && ln -s /go/bin/go /usr/bin
RUN git clone -b v0.54.0 --depth 1 https://github.com/gohugoio/hugo.git && cd hugo && /usr/bin/go install --tags extended && ln -s /root/go/bin/hugo /usr/bin
