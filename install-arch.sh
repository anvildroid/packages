#!/bin/bash
# AnvilDroid pacman repository (Arch Linux).
set -e
curl -fsSL https://anvildroid.github.io/packages/key.asc -o /tmp/anvildroid-key.asc
sudo pacman-key --add /tmp/anvildroid-key.asc
sudo pacman-key --lsign-key collyn094@gmail.com
rm -f /tmp/anvildroid-key.asc
if ! grep -q '^\[anvildroid\]' /etc/pacman.conf; then
    printf '\n[anvildroid]\nSigLevel = Required DatabaseOptional\nServer = https://anvildroid.github.io/packages/arch/x86_64\n' | sudo tee -a /etc/pacman.conf >/dev/null
fi
sudo pacman -Sy --noconfirm anvildroid-controller
echo "✓ AnvilDroid installed; updates arrive with pacman -Syu."
