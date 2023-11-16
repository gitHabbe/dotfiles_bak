#!/bin/bash

echo "print"

## declare an array variable
emojis=("😊" "😎" "👍")

for emoji in "${emojis[@]}"; do
#  printf "\U%04x" $(echo "$emoji" | cut -d '' -f 2-4)
  echo "$(echo "$emoji" | cut -d '' -f 2-4)"
done
