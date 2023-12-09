#!/usr/bin/bash
FILES=$(ls ~/.config/lite-xl/plugins/)
for i in $FILES; do
  echo $i >> ./PLUGINS.txt
done
