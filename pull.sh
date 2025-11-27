#!/bin/bash

set -e

REPO_DIR=~/Desktop/development
TARGET_DIR=/var/www/html

echo "Githubist pullimine"
cd "$REPO_DIR"
git pull origin master

echo "Failide Apachei kopeerimine"
sudo cp -r "$REPO_DIR"/* "$TARGET_DIR"

echo "Apache restarimine"
sudo systemctl restart apache2

echo "Tehtud"
