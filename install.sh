#!/bin/bash

if [ ! "$EUID" -eq 0 ]; then
  echo "Run as root!"
  exit 1
fi

cd GadgetDeck-DL
make install
