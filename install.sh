#!/bin/bash
# AnvilDroid APT repository (Debian/Ubuntu/Mint).
set -e
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://anvildroid.github.io/packages/key.asc | sudo gpg --dearmor --yes -o /etc/apt/keyrings/anvildroid.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/anvildroid.gpg] https://anvildroid.github.io/packages stable main" | sudo tee /etc/apt/sources.list.d/anvildroid.list >/dev/null
sudo apt-get update
sudo apt-get install -y anvildroid-controller
echo "✓ AnvilDroid installed; updates arrive with apt upgrade."
