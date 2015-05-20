#!/bin/bash

cd /config

if [ ! -d "/config/plexrequests-meteor" ]; then
  echo "First install detected, cloning repository"
  git clone https://github.com/lokenx/plexrequests-meteor.git
  cd plexrequests-meteor
else
  echo "Updating repository"
  cd plexrequests-meteor
  git pull
fi

if [ "$EDGE" = "1" ]; then
  echo "Bleeding edge requested! Switching to dev branch"
  git checkout dev
else
  echo "Staying on master/stable branch"
  git checkout -f master
fi

chown -R nobody:users /config
chmod -R g+rw /config

su -c "meteor &" -s /bin/sh nobody
