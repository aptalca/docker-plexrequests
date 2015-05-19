#!/bin/bash

cd /config

if [ ! -d "/config/plexrequests-meteor" ]; then
  git clone https://github.com/lokenx/plexrequests-meteor.git
else
  cd plexrequests-meteor
  git pull
fi

chown -R nobody:users /config
chmod -R g+rw /config

cd /config/plexrequests-meteor
su -c "meteor &" -s /bin/sh nobody
