#!/bin/bash

cd "${0%/*}"

for D in *; do
  if [ -d "${D}" ]; then
    if [[ "$D" == *"default"* ]]; then
      continue
    fi
    if [[ $(find "${D}" -name "meta.xml" | wc -l) -gt 0 ]]; then
      echo "${D}"
      sed -i 's/<sse_mode>production<\/sse_mode>/<sse_mode>development<\/sse_mode>/i' "${D}/meta.xml"
      sed -i -E 's/src="([a-zA-Z0-9\-_]+).luac"(.*)compile="true"(.*)\/>/src="\1.lua"\2compile="true"\3\/>/gi' "${D}/meta.xml"
    fi
  fi
done

sed -i 's/envir = "production"/envir = "development"' 'SkimoSE_core/config.lua'
