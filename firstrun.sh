#!/bin/bash

cd /config

if [ ! -d "/config/plexrequests-meteor" ]; then
  git clone https://github.com/lokenx/plexrequests-meteor.git
  cd plexrequests-meteor
else
  cd plexrequests-meteor
  git pull
fi

if [ "$EDGE" = "1" ]; then
  echo "Switching to dev branch"
  git checkout dev
fi

chown -R nobody:users /config
chmod -R g+rw /config

su -c "meteor &" -s /bin/sh nobody
