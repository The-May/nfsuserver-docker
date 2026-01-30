
# Need For Speed: Underground Server Docker Image

This Project is forked from [HarpyWar/nfsuserver](https://github.com/HarpyWar/nfsuserver) and it only focuses on creating a 1-click solution on deploying a Docker Container.



# **Please Note:**
**Security was never a key point in this, since I want to use it for a local/offline LAN-Party with people that I trust and therefore hardening was never considered.**

Webserver is available via http://0.0.0.0:10780/stats/index.php

## Server Installation

### Linux

Docker Deploy

```
[go to the dir where the server should be copied to]

git clone https://github.com/The-May/nfsuserver-docker
cd nfsuserver-docker
sudo chmod +x deploy.sh
./deploy.sh
```


## Server Configuration

Edit `nfsu.conf` and `news.txt` to suit your needs.
They are accissable through the mapping in the compose file

After first start `server.log` should be created. 
View Docker logs of the server:
```
docker compose logs
```

After first user login a database `rusers.dat` with users should be created.

### Port forwarding

The server requires the following ports to be forwarded:

* 10900 TCP
* 10901 TCP
* 10980 TCP
* 10800 TCP/UDP


## Client Configuration

1. Download and run [nfsuclient.exe](https://github.com/HarpyWar/nfsuserver/releases/download/client/nfsuclient.exe). Click on `Get Game` button to download ready to play NFSU game v1.4 with noCD and Widescreen with HD resolution.

2. Click `Get public serverlist` or `Add Server` to put your server address manually, and then click `Use Server`

3. Run the game &rarr; Select `Play Online` &rarr; Create a new profile, agree with rules and click `Use Profile`

After a login you have to select car and join a room to create/join a game. Note that hosting a lobby requires port 3658 UDP to be forwarded.

![NFSU Lobby](http://i.imgur.com/ntGM3VF.jpg)


## Documentation

* [NFSU Server Status](https://github.com/HarpyWar/nfsuserver/wiki/NFSU-Server-Status)

