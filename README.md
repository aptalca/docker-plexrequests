### Plex Requests 

#### Install On unRaid:

On unRaid, install from the Community Repositories and enter the app folder location and the port for the webUI.

For configuration instructions, please visit https://github.com/lokenx/plexrequests-meteor

#### Install On Other Platforms (like Ubuntu, Synology 5.2 DSM, etc.):

On other platforms, you can run this docker with the following command (by default installs the stable master):

```
docker run -d --name="PlexRequests" -v /path/to/config:/config:rw -v /etc/localtime:/etc/localtime:ro -e BRANCH="master" -p XXXX:3000 aptalca/docker-plexrequests
```

#### Setup Instructions
- Replace the variable "/path/to/config" with your choice of folder on your system. That is where the config and the library files will reside, and they will survive an update, reinstallation, etc. of the container.
- Replace the "XXXX" with your port of choice.
- If you would like to use a different branch (for testing or development), modify the BRANCH variable and replace "master" with your choice of branch
- Visit https://github.com/lokenx/plexrequests-meteor for configuration instructions
- You can access the web gui at the following address: http://SERVERIP:PORT

#### Change Log  
- 2016-04-06 - Increased verbosity of the log. Really slow meteor update could fool users into thinking it wasn't working
- 2015-11-02 - Previous meteor update was preventing a git pull, this version fixes that issue

##### Note:
If you'd like to use this with reverse proxy, you need a url prefix. You can set one by adding the following to your run command: `-e ROOT_URL="http://localhost/requests"` just modify the "requests" part as you please. Then you can access the web page at http://SERVERIP:PORT/requests
