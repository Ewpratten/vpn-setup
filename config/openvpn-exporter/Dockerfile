FROM golang:latest

RUN apt-get update -y
RUN apt-get install git -y

WORKDIR /
RUN git clone https://github.com/patrickjahns/openvpn_exporter.git
WORKDIR /openvpn_exporter

RUN make generate
RUN make build

CMD ["./cmd/openvpn_exporter", "--status-file", "/etc/openvpn_exporter/server.status"]