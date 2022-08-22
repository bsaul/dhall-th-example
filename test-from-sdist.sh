#!/usr/bin/env bash

tmp=$(mktemp -d)

cp dist-newstyle/sdist/dhall-th-0.1.0.0.tar.gz  "$tmp"

cd "$tmp" || exit 1

tar -zxf dhall-th-0.1.0.0.tar.gz

cd dhall-th-0.1.0.0 || exit 1
cabal build dhall-th

echo "$?"

