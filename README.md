#Plex Requests for unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.

For setup instructions, please visit https://github.com/lokenx/plexrequests-meteor

##Other Platforms:

On other platforms, you can run this docker with the following command (by default installs the stable master):

```
docker run -d --name="PlexRequests" -v /path/to/config:/config:rw -v /etc/localtime:/etc/localtime:ro -p 3000:3000 aptalca/docker-plexrequests
```

To run the development version, set the environment variable EDGE to 1 as in the following example:

```
docker run -d --name="PlexRequests" -v /path/to/config:/config:rw -v /etc/localtime:/etc/localtime:ro -e EDGE=1 -p 3000:3000 aptalca/docker-plexrequests
```
