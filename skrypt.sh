#!/bin/bash

if [ "$1" = "--date" ] && [ "$2" = "-d" ]; then
  date +%Y-%m-%d
fi
