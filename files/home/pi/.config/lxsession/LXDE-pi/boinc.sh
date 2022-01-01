#!/usr/bin/env bash

# Check for less than 2GB RAM
if [ $MEM -lt 2097152 ]; then
  echo "Not enough memory to proceed..."
  exit 0
fi

sudo -u root /etc/init.d/boinc-client start

sleep 60 # Give network time to come online...

boinccmd --acct_mgr attach https://bam.boincstats.com/ "169373_cb27b99639409722eb67cc774b50e1c1" "169373_cb27b99639409722eb67cc774b50e1c1"
