#!/bin/bash
# AnvilDroid RPM repository (openSUSE).
set -e
sudo rpm --import https://anvildroid.github.io/packages/key.asc
sudo zypper addrepo --refresh --check --gpgcheck https://anvildroid.github.io/packages/rpm/ anvildroid
sudo zypper --non-interactive install anvildroid-controller
