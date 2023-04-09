#!/bin/bash

set -e

time docker run \
    -v "$PWD/../":/go/src/github.com/bnhf/pivpn-tap-web-ui \
    --rm \
    -w /usr/src/myapp \
    natansdj/go-beego:1.18 \
    sh -c "cd /go/src/github.com/bnhf/pivpn-tap-web-ui/ && go mod tidy && go mod vendor && bee version && bee pack -exr='^vendor|^data.db|^build|^README.md|^docs'"
