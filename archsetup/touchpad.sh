#!/bin/bash

echo -e 'Section "Input Class"\n\tIdentifier "touchpad"\n\tDriver "libinput"\n\tMatchIsTouchpad "on"\n\tOption "Tapping" "on"\n\tOption "TappingButtonMap" "lrm"\nEndSection' >> 30-touchpad.conf
sudo mv 30-touchpad.conf /etc/X11/xorg.conf.d
