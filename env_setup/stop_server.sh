#!/bin/bash

echo "Stopping server"

# Check if the process 'sample_deploy' exists in pm2
process_exists=$(sudo pm2 list | grep -c "sample_deploy")

if [ $process_exists -gt 0 ]; then
    # If 'sample_deploy' process exists, stop it
    echo "Stopping 'sample_deploy' process..."
    sudo pm2 stop sample_deploy
else
    # If 'sample_deploy' process doesn't exist, exit
    echo "'sample_deploy' process not found. Exiting..."
fi