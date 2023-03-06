FROM rust:1.62.1-buster
COPY ./target/x86_64-unknown-linux-gnu/release/axum-api /opt/axum-api

ENTRYPOINT /opt/axum-api
