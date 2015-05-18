#!/bin/bash

cd /config
git clone https://github.com/lokenx/plexrequests-meteor.git
cd plexrequests-meteor
chown -R nobody:users /config
chmod -R o+rw /config

su -c "meteor &" -s /bin/sh nobody
