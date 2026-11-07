FROM ghcr.io/ptero-eggs/yolks:python_3.11

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        libopus0 \
    && rm -rf /var/lib/apt/lists/*

USER container
