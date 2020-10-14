#!/bin/bash

for D in *; do
  if [ -d "${D}" ]; then
    if [[ $(find "${D}" -name "meta.xml" | wc -l) -gt 0 ]]; then
      echo "${D}"
      sed -i -E 's/src="([a-zA-Z0-9\-_]+).sse"/src="\1.ssec"/gi' "${D}/meta.xml"
    fi
  fi
done

sed -i 's/envir = "development"/envir = "production"' 'SkimoSE_core/config.lua'
