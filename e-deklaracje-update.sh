#!/bin/bash

mkdir -p ~/bin/adobeair
rm -f ~/bin/adobeair/*
cp -a ./adobeair/. ~/bin/adobeair
chmod +x ~/bin/adobeair/*
wget http://www.e-deklaracje.gov.pl/files/dopobrania/e-dek/app/e-DeklaracjeDesktop.air
sudo PATH="$HOME/bin/adobeair:$PATH" /opt/Adobe\ AIR/Versions/1.0/Adobe\ AIR\ Application\ Installer $(pwd)/e-DeklaracjeDesktop.air
(sleep 120 && rm -f e-DeklaracjeDesktop.air && rm -f "C:\nppdf32Log\debuglog.txt" && rm -f ~/"C:\nppdf32Log\debuglog.txt") &
