
# Need For Speed: Underground Server Docker Image

This Project is forked from [HarpyWar/nfsuserver](https://github.com/HarpyWar/nfsuserver) and it only focuses on creating a 1-click solution on deploying a Docker Container.



# **Please Note:**
**Security was never a key point in this, since I want to use it for a local/offline LAN-Party with people that I trust and therefore hardening was never considered.**

Webserver is available via http://ip.of.your.server:10780

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

The server runs on hostmode and access via LAN
if exposing to WAN it at least requires the following ports to be forwarded (not recommended by me)

* 10900 TCP
* 10901 TCP
* 10980 TCP
* 10800 TCP/UDP


## Client Configuration

1. I initially used the .exe from https://www.nfsplanet.com/download_sel.php?file=http://ftp.gamesweb.com/pub/nfs5/nfs7/tools/lan/nfsu_lan.1.0.1.zip&key=358ddb7e97451f5ecb03f42d195b9816&lang=eng which worked without AV warnings OR get [https://nfsu.onlyami.ga/files/](https://github.com/Pelorojo/NFSUServerChanger) which seems like a much better approach.


## Documentation

* [NFSU Server Status](https://github.com/HarpyWar/nfsuserver/wiki/NFSU-Server-Status)

