FROM rust:1.50

RUN cargo install doh-proxy --no-default-features

CMD ["doh-proxy", "-H", "dns.retrylife.ca", "-l", "0.0.0.0:3000", "-g", "159.89.122.178", "-u", "10.5.0.6:53"]