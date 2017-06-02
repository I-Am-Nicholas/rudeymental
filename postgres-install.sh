#!/bin/bash

clear

echo "Installing Homebrew, the package management software needed to install the database management software."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "Installing the database management software itself."

brew install postgresql

ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

echo "Attempting to launch the database."

psql
