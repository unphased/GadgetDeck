#!/bin/bash

# set -e
# set -x
#
# if [ ! "$EUID" -eq 0 ]; then
#   echo "Run as root!"
#   exit 1
# fi
#
# cd GadgetDeck-DL
#
# cp gadget-deck-manager.py $(INSTALL_DIR)/
# chmod +x $(INSTALL_DIR)/gadget-deck-manager.py
# cp -r "HID Descriptors" $(INSTALL_DIR)
# python -m venv /usr/share/gadget-deck/venv && /usr/share/gadget-deck/venv/bin/pip install -r requirements.txt
# cp util/gadget-deck*.service /etc/systemd/system/
# cp util/99-gadget-deck.rules /etc/polkit-1/rules.d/
