FROM mcr.microsoft.com/devcontainers/base:debian

# Install system dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    software-properties-common \
    dirmngr \
    gnupg \
    ca-certificates \
    locales \
    r-base

# Set up locale
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

# Install uv (Python package manager)
RUN curl -LsSf https://astral.sh/uv/install.sh | sh -s -- --yes \
    && ln -s /root/.cargo/bin/uv /usr/local/bin/uv

# Install Quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    dpkg -i quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb
