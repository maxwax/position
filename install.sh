#!/bin/bash

echo "Deploy position to /usr/local/bin"
sudo cp -pr position /usr/local/bin
sudo chmod a+rx /usr/local/bin/position

echo "Deploy GNOME desktop shortcut to call position"
sudo cp -pr work.desktop /usr/share/applications
