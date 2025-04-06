FROM mcr.microsoft.com/devcontainers/base:debian

# Install system dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y \
    python3-pip \
    r-base

# Download the latest installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh

# Run the installer then remove it
RUN sh /uv-installer.sh && rm /uv-installer.sh

# Symlink the installed binary to /usr/local/bin
RUN ln -s /root/.local/bin/uv /usr/local/bin/uv

# Ensure the installed binary is on the `PATH`
ENV PATH="/root/.local/bin/:$PATH"

# Install Quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    dpkg -i quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb
