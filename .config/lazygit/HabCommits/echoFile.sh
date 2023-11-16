#!/bin/bash


echo $(echo "$@" | sed -r 's/^.*\(([^a-zA-Z]*([a-zA-Z]*))\).*$/\2/')