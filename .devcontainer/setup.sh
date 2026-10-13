#!/usr/bin/env bash
# Installs GHunt, plus Firefox with the GHunt Companion extension for the virtual desktop.
set -euo pipefail

sudo apt-get update || true  # a broken third-party repo in the base image should not stop setup
sudo apt-get install -y --no-install-recommends firefox-esr

for dir in /etc/firefox/policies /etc/firefox-esr/policies /usr/lib/firefox-esr/distribution; do
  sudo mkdir -p "$dir"
  sudo cp .devcontainer/firefox-policies.json "$dir/policies.json"
done

pip install --user -e .

echo "alias ghunt-login='bash $PWD/.devcontainer/login.sh'" >> ~/.bashrc
