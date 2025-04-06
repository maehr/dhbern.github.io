FROM mcr.microsoft.com/devcontainers/base:debian

# Install system dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y r-base

# Download the latest installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh

# Run the installer then remove it
RUN sh /uv-installer.sh && rm /uv-installer.sh

# Install uv and uvx to /usr/local/bin
RUN install -m 755 ~/.local/bin/uv /usr/local/bin/uv \
&& install -m 755 ~/.local/bin/uvx /usr/local/bin/uvx

# Install Quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb && \
    dpkg -i quarto-linux-amd64.deb && \
    rm quarto-linux-amd64.deb
