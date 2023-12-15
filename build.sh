#!/bin/bash

set -e
set -x

if [ ! -d GadgetDeck-DL ]; then
  mkdir GadgetDeck-DL
  cd GadgetDeck-DL
  wget https://github.com/Frederic98/GadgetDeck/releases/download/V0.1/GadgetDeck.zip
  unzip GadgetDeck.zip
else
  cd GadgetDeck-DL
fi

python -m venv venv
make

# cp -r GadgetDeck /usr/share/gadget-deck/
mkdir -p program
chmod +x program/GadgetDeck
echo running steamos-add-to-steam $(pwd)/program/GadgetDeck:
steamos-add-to-steam $(pwd)/program/GadgetDeck

