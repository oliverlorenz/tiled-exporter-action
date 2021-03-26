FROM debian:sid
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y --no-install-recommends tiled xvfb xauth && \
    rm -rf /var/cache/apt/archives
