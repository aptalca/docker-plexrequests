#!/bin/bash

echo "<-------------------------------------->"
echo
echo "<-------------------------------------->"
echo "Starting container on" `date`
cd /config

if [ ! -d "/config/plexrequests-meteor" ]; then
  echo "First install detected, cloning repository"
  git clone https://github.com/lokenx/plexrequests-meteor.git
  cd plexrequests-meteor
else
  echo "Updating repository"
  cd plexrequests-meteor
  git reset --hard
  git pull
fi

if [ -z "$BRANCH" ]; then
  BRANCH="master"
fi

echo "Selecting the desired branch"
echo "Using the $BRANCH branch"
git checkout -f $BRANCH

echo "Fixing permissions"
chown -R nobody:users /config
chmod -R g+rw /config

echo "Updating meteor. . . may take a while if meteor servers are being slow. The web gui will not go up until update is completed and there will be another message about PlexRquests starting"
/sbin/setuser nobody meteor update --release 1.3.5.1
echo "Starting PlexRequests. The web gui will be up once the message 'App running at: http://localhost' is displayed"
/sbin/setuser nobody meteor &
