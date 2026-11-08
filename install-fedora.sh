#!/bin/bash
# AnvilDroid RPM repository (Fedora).
set -e
sudo rpm --import https://anvildroid.github.io/packages/key.asc
sudo tee /etc/yum.repos.d/anvildroid.repo >/dev/null <<'REPO'
[anvildroid]
name=AnvilDroid
baseurl=https://anvildroid.github.io/packages/rpm/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://anvildroid.github.io/packages/key.asc
REPO
sudo dnf install -y anvildroid-controller
echo "✓ AnvilDroid installed; updates arrive with dnf upgrade."
