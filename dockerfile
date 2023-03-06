FROM rust:1.62.1-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y build-essential && rm -rf /var/lib/apt/lists/*
COPY ./target/x86_64-unknown-linux-gnu/release/axum-api /opt/axum-api
ENTRYPOINT /opt/axum-api
