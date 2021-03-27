#!/bin/sh

exportFiles () {
  if [ -n "$INPUT_EXPORT_JSON" ]; then
    echo "export json"
    tiled --export-map json "$1" "$(echo $1 | cut -f1 -d.).json"
  fi
  if [ -n "$INPUT_EXPORT_PNG" ]; then
    echo "export png"
    tmxrasterizer "$1" "$(echo $1 | cut -f1 -d.).png"
  fi
}

xvfb-run find . -name "$INPUT_PATTERN" -exec sh -c 'exportFiles "$0" {}' \;
