#!/bin/bash

cd /config
curl https://install.meteor.com/ | sh
git clone https://github.com/lokenx/plexrequests-meteor.git
cd plexrequests-meteor
chown -R nobody:users /config
chmod -R o+rw /config

su -c "meteor &" -s /bin/sh nobody
