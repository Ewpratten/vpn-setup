FROM rust:1.50

RUN cargo install doh-proxy --no-default-features

CMD ["doh-proxy", "-H", "dns.retrylife.ca", "-l", "0.0.0.0:3000", "-u", "10.5.0.6:53"]