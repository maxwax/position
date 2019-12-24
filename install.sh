#!/bin/bash

echo "Deploy position to /usr/local/bin"
sudo cp -prv position /usr/local/bin
sudo chmod a+rx /usr/local/bin/position
