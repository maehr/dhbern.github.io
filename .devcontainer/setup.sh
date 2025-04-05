#!/bin/bash
set -e

echo "[devcontainer] Installing dependencies..."

# Ensure R packages directory exists
mkdir -p ~/.local/share/renv

# Install R and restore renv environment
Rscript -e 'install.packages("renv", repos="https://cloud.r-project.org"); renv::restore()'

# Sync Python env with uv
uv sync

# Install Node.js dependencies
npm install

# Install Quarto (includes pandoc etc.)
curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
sudo dpkg -i quarto-linux-amd64.deb
rm quarto-linux-amd64.deb

echo "[devcontainer] Setup complete."
