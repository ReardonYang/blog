#!/bin/sh
# Cloudflare Pages build: fetch the 5 images that only exist in the built-output
# repo (ReardonYang.github.io), then build with pinned Hugo 0.110.0.
set -e
GHIO_RAW="https://raw.githubusercontent.com/ReardonYang/ReardonYang.github.io/4a812288297b1e1018fd7de2bd890478db19feb6/images"
mkdir -p static/images/origin
for f in origin01 origin02 origin03 origin04; do
  [ -f "static/images/origin/$f.jpg" ] || curl -fsL "$GHIO_RAW/origin/$f.jpg" -o "static/images/origin/$f.jpg"
done
[ -f static/images/lastlight.jpg ] || curl -fsL "$GHIO_RAW/lastlight.jpg" -o static/images/lastlight.jpg
if ! hugo version 2>/dev/null | grep -q "0.110.0"; then
  curl -fsL "https://github.com/gohugoio/hugo/releases/download/v0.110.0/hugo_0.110.0_Linux-64bit.tar.gz" -o /tmp/hugo.tar.gz
  tar -xzf /tmp/hugo.tar.gz -C /tmp hugo
  HUGO=/tmp/hugo
else
  HUGO=hugo
fi
$HUGO
