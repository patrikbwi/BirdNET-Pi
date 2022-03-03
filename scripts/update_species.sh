#!/usr/bin/env bash
# Update the species list
#set -x
source /etc/birdnet/birdnet.conf
sqlite3 /home/pi/BirdNET-Pi/scripts/birds.db "SELECT DISTINCT(Com_Name) FROM detections" | sort >  ${IDFILE}
