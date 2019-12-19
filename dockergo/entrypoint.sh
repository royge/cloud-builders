#!/usr/bin/env bash

set -e
set -o errexit

git config --global --add url."git@github.com:".insteadOf "https://github.com/"

export GO111MODULE=on
export CGO_ENABLED=1
export PATH=$PATH:/usr/local/go/bin

service start docker

go "$@"
