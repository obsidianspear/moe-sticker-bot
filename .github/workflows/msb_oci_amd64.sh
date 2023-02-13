#!/bin/sh

GITHUB_TOKEN=$1

buildah login -u star-39 -p $GITHUB_TOKEN ghcr.io

# AMD64
#################################
if false ; then

c1=$(buildah from docker://archlinux:latest)

buildah run $c1 -- pacman -Sy
buildah run $c1 -- pacman --noconfirm -S libheif ffmpeg imagemagick curl libarchive python python-pip
buildah run $c1 -- sh -c 'yes | pacman -Scc'

buildah run $c1 -- pip3 install lottie[GIF] cairosvg emoji
 
buildah config --cmd '/moe-sticker-bot' $c1

buildah commit $c1 moe-sticker-bot:base

buildah push moe-sticker-bot:base ghcr.io/star-39/moe-sticker-bot:base

fi
#################################

# Build container image.
c1=$(buildah from ghcr.io/star-39/moe-sticker-bot:base)

# Build MSB go bin
go build -o moe-sticker-bot cmd/moe-sticker-bot/main.go 
buildah copy $c1 moe-sticker-bot /moe-sticker-bot

# Copy tools.
buildah copy $c1 tools/msb_kakao_decrypt.py /usr/local/bin/msb_kakao_decrypt.py
buildah copy $c1 tools/msb_emoji.py /usr/local/bin/msb_emoji.py

buildah commit $c1 moe-sticker-bot:latest

buildah push moe-sticker-bot ghcr.io/star-39/moe-sticker-bot:amd64
buildah push moe-sticker-bot ghcr.io/star-39/moe-sticker-bot:latest
