#!/bin/bash

# Update the package database
sudo pacman -Syu

# Install optional dependencies for ranger
sudo pacman -S --noconfirm \
    atool \
    elinks \
    ffmpegthumbnailer \
    highlight \
    imagemagick \
    libcaca \
    lynx \
    mediainfo \
    odt2txt \
    perl-image-exiftool \
    poppler \
    python-chardet \
    python-pillow \
    transmission-cli \
    ueberzug \
    w3m

echo "All optional dependencies for ranger have been installed successfully!"

