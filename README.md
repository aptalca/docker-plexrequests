#Plex Requests 

##Install On unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.

For configuration instructions, please visit https://github.com/lokenx/plexrequests-meteor

##Install On Other Platforms (like Ubuntu, Synology 5.2 DSM, etc.):

On other platforms, you can run this docker with the following command (by default installs the stable master):

```
docker run -d --name="PlexRequests" -v /path/to/config:/config:rw -v /etc/localtime:/etc/localtime:ro -e EDGE=0 -p 3000:3000 aptalca/docker-plexrequests
```

###Setup Instructions
- Replace the variable "/path/to/config" with your choice of folder on your system. That is where the config and the library files will reside, and they will survive an update, reinstallation, etc. of the container.
- If you would like to install the development branch for bleeding edge, change the EDGE variable to "1"
- Visit https://github.com/lokenx/plexrequests-meteor for configuration instructions
