#!/usr/bin/env bash

set -e
set -o errexit

git config --global --add url."git@github.com:".insteadOf "https://github.com/"

/usr/local/go/bin/go $1
