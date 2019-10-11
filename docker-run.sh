#!/bin/sh
set -eu


DOCKER_USER="$(id -u)"
POUND_CFG="$(readlink -f "./pound.cfg")"
CERTIFICATE="$(readlink -f "./certificate.pem")"

set -x

docker run \
    -u "$DOCKER_USER" \
    -p 80:80 \
    -p 443:443 \
    --mount "type=bind,src=$POUND_CFG,dst=/usr/local/etc/pound.cfg" \
    --mount "type=bind,src=$CERTIFICATE,dst=/secrets/certificate.pem" \
    secoresearch/pound
