#!/bin/bash
airodump-ng -w /root/GUIfi/public/seed.kismet --output-format kismet --write-interval 1 wlan0mon & sleep 10; kill $!
