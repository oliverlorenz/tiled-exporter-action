#!/bin/sh

TMX_FILE=/github/workspace/buero.tmx
# xvfb-run find /github/workspace -name "$INPUT_PATTERN" -exec sh -c '

if [ -n "$INPUT_EXPORT_JSON" ]; then
  echo "export json"
  xvfb-run --auto-servernum tiled --export-map json "${TMX_FILE}" $(echo "${TMX_FILE}" | cut -f1 -d.).json
fi
if [ -n "$INPUT_EXPORT_PNG" ]; then
  echo "export png"
  xvfb-run --auto-servernum tmxrasterizer "${TMX_FILE}" $(echo ${TMX_FILE} | cut -f1 -d.).png
fi
