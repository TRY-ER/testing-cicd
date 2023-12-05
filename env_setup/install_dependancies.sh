#!/bin/bash
apt-get install npm nodejs -y
echo $(pwd)
echo $(ls ./deployment-root)
npm install