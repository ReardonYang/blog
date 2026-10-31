#!/bin/sh
# Cloudflare Pages build: pinned Hugo 0.110.0 (the version the original site was built with).
set -e
if ! hugo version 2>/dev/null | grep -q "0.110.0"; then
  curl -fsL "https://github.com/gohugoio/hugo/releases/download/v0.110.0/hugo_0.110.0_Linux-64bit.tar.gz" -o /tmp/hugo.tar.gz
  tar -xzf /tmp/hugo.tar.gz -C /tmp hugo
  HUGO=/tmp/hugo
else
  HUGO=hugo
fi
$HUGO
