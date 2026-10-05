#!/bin/bash
set -e

# Stop Apache2 service if it is currently running
if systemctl is-active --quiet apache2; then
    echo "Stopping Apache2 service..."
    systemctl stop apache2
else
    echo "Apache2 is not running or not installed yet. Skipping stop."
fi
