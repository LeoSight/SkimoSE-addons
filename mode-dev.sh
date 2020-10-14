#!/bin/bash

for D in *; do
  if [ -d "${D}" ]; then
    if [[ $(find "${D}" -name "meta.xml" | wc -l) -gt 0 ]]; then
      echo "${D}"
      sed -i -E 's/src="([a-zA-Z0-9\-_]+).ssec"/src="\1.sse"/gi' "${D}/meta.xml"
    fi
  fi
done

sed -i 's/envir = "production"/envir = "development"' 'SkimoSE_core/config.lua'
