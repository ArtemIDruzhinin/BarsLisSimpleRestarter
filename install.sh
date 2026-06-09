#!/bin/bash
set -e

sudo cp barslis-restarter /usr/local/bin/
sudo chmod +x /usr/local/bin/barslis-restarter

sudo cp barslis-restarter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now barslis-restarter
