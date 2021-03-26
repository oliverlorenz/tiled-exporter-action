#!/bin/sh

exportFiles() {
  if [ -n "$EXPORT_JSON" ]; then
    tiled --export-map json "$1" "$(echo $1 | cut -f1 -d.).json"
  fi
  if [ -n "$EXPORT_PNG" ]; then
    tmxrasterizer "$1" "$(echo $1 | cut -f1 -d.).png"
  fi
}

xvfb-run find . -name "$PATTERN" -exec sh -c 'exportFiles "$0" {}' \;
