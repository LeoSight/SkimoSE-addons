#!/bin/bash

for file in $(find . -type f -name "*.sse"); do
  echo "${file}"
  curl -s -X POST -F compile=1 -F debug=0 -F obfuscate=3 -F luasource="@${file}" http://luac.mtasa.com/ > "${file}c"
done
