#!/bin/sh

if [ -n "$INPUT_EXPORT_JSON" ]; then
  echo "export json"
  xvfb-run --auto-servernum tiled --export-map json "${INPUT_TMX_FILE}" $(echo "${INPUT_TMX_FILE}" | cut -f1 -d.).json
fi
if [ -n "$INPUT_EXPORT_PNG" ]; then
  echo "export png"
  xvfb-run --auto-servernum tmxrasterizer "${INPUT_TMX_FILE}" $(echo ${INPUT_TMX_FILE} | cut -f1 -d.).png
fi
