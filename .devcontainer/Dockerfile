FROM mcr.microsoft.com/devcontainers/base:debian

# Install system dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y \
    r-base

# Install uv (Python package manager)
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Symlink uv to /usr/local/bin
RUN ln -s ~/.cargo/bin/uv /usr/local/bin/uv

# Install Quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    dpkg -i quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb
