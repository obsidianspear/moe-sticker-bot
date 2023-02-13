#!/usr/bin/bash

GITHUB_TOKEN=$1

buildah login -u star-39 -p $GITHUB_TOKEN ghcr.io


#AArch64
c1=$(buildah from docker://arm64v8/nginx:latest)

# Copy nginx template
buildah run  $c1 -- mkdir -p /etc/nginx/templates
buildah copy $c1 web/nginx/default.conf.template /etc/nginx/templates/

# Copy react app
cd web/webapp3/
buildah copy $c1 build/ /webapp

buildah commit $c1 moe-sticker-bot:msb_nginx_aarch64

buildah push moe-sticker-bot:msb_nginx_aarch64 ghcr.io/star-39/moe-sticker-bot:msb_nginx_aarch64
