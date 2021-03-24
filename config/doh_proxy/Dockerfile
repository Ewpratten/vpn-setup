FROM rust:1.50

RUN cargo install doh-proxy

CMD ["doh-proxy", "--listen-address", "0.0.0.0:80", "--server-address", "10.5.0.6:53"]