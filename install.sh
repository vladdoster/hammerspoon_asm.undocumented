#!/usr/bin/env bash

echo "--- Compiling:"
for d in $(find . -maxdepth 1 -type d -print); do
	pushd $(greadlink -f "$d") > /dev/null
  echo "> $(basename $PWD)"
	make install &>/dev/null
	popd > /dev/null
done
echo "--- Successfully installed hammerspoon modules"
