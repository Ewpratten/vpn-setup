FROM golang:latest

# Pull CoreDNS code with ads support
# RUN go get github.com/coredns/coredns
# RUN cd /go/src/github.com/coredns/coredns

# Pull CoreDNS
RUN mkdir /src
RUN git clone https://github.com/coredns/coredns /src/coredns
WORKDIR /src/coredns
RUN git checkout v1.8.1

# Rewrite configs
RUN sed -i 's|hosts:hosts|ads:github.com/c-mueller/ads\nhosts:hosts|g' plugin.cfg

# Get the ads plugin
RUN go get github.com/c-mueller/ads

# Build CoreDNS
RUN make
RUN ln -s ./coredns /usr/bin/coredns

EXPOSE 53 53/udp
ENTRYPOINT ["/coredns"]