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
make # This runs the setup make target

# INSTALL_DIR="/usr/share/gadget-deck"
# sudo cp -r GadgetDeck ${INSTALL_DIR}/
chmod +x GadgetDeck/GadgetDeck

# need this to be run from the desktop mode!
steamos-add-to-steam $(pwd)/GadgetDeck/GadgetDeck

mkdir -p /home/deck/.steam/steam/controller_config
cp util/game_actions_480.vdf /home/deck/.steam/steam/controller_config/

chmod +x gadget-deck-manager.py

