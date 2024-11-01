---
title: " Docker Projects"
author: Nicholas Stull
description: All about containerizing your applications using Docker.
date: 2024-09-15
tags:
  - tech
  - docker
  - dash/tech
topic:
  - Docker
type: Dashboard
category: Technology
cssclasses:
  - dashboard
banner: "![[docker.jpg]]"
---
<div class="title" style="color:Sienna">Docker</div>

# Notes
Here’s where you’ll find everything you need to know about Docker, from networking tips to ready-to-use templates. Time to ship, bud.
- Docker Notes!
`$=dv.list(dv.pages().where(p => p.category == "Docker" && p.type == "Resource").sort(f => f.file.name, "asc").file.link)`
- Docker Networking
	- [Docker networking is CRAZY!! (you NEED to learn it)](https://www.youtube.com/watch?v=bKFMS5C4CG0)
# Projects
Here’s where all the Docker magic happens. From building media servers to setting up networking solutions, these projects show the power of containerization. Ready to ship? Let’s get started.
- Docker Projects
`$=dv.list(dv.pages().where(p => p.category == "Docker" && p.type == "Project").sort(f => f.file.name, "asc").file.link)`
# Docker Containers
- Books
	- [Kavita](https://www.kavitareader.com/)
	- [calibre - LinuxServer.io](https://docs.linuxserver.io/images/docker-calibre/#usage)
- Data Trackers
	- [IgnisDa/ryot: Roll your own tracker!](https://github.com/ignisda/ryot)
	- [Ubooquity documentation](https://vaemendis.github.io/ubooquity-doc/pages/installation-guide.html)
	- [MakeMonmouth/mventoryhttps://github.com/MakeMonmouth/mventory)
- Dashboard's
	- [Homarr](https://github.com/ajnart/homarr)
	- [Flame](https://github.com/pawelmalak/flame)
	- [Homepage](https://github.com/gethomepage/homepage)
	- [Which Self-Hosted Dashboard is Right For You??](https://www.youtube.com/watch?v=u5blATj71o4)
- SDR
	- [sdr-enthusiasts/docker-rtlsdrairband: Docker container to run rtlsdir-airband + ice cast to stream ATC audio locally or to a remote server](https://github.com/sdr-enthusiasts/docker-rtlsdrairband)
	- [slocomptech/spyserver - Docker Image | Docker Hub](https://hub.docker.com/r/slocomptech/spyserver)
	- [Rtlsdr server on Docker : r/RTLSDR](https://www.reddit.com/r/RTLSDR/comments/z0f6nk/rtlsdr_server_on_docker/)
- Weather Station
	-  [SeanRiggs/pi-weather-station: Modifying to Containerize this Application in Docker](https://github.com/SeanRiggs/pi-weather-station)
	- [Pi-Hosted: Your Personal Weather Station Docker Container - YouTube](https://www.youtube.com/watch?v=5JfPzvcm0E8)


# NetBoot XYZ
- Resources
	- [Netboot.xyz](https://netboot.xyz/)
	- [Meet netboot.xyz - Network Boot Any Operating System](https://www.youtube.com/watch?v=4btW5x_clpg)
```yaml 
services:
  netbootxyz:
    image: 'lscr.io/linuxserver/netbootxyz:latest'
    container_name: netbootxyz
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - MENU_VERSION=1.9.9 #optional
      - PORT_RANGE=30000:30010 #optional
      - SUBFOLDER=/ #optional
      - NGINX_PORT=80 #optional
      - WEB_APP_PORT=3000 #optional
    volumes:
      - /opt/stacks/network/netboot/config:/config
      - /opt/stacks/network/netboot/assets:/assets #optional
    ports:
      - 3002:3000
      - 69:69/udp
      - 8081:80 #optional
    restart: unless-stopped
```
# Nginx Proxy Manager

- Links
	 - [Nginx Proxy Manager](https://nginxproxymanager.com/)

```yaml
version: '3.8'
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
```


# Media Containers 
- ARRS
	- [RandomNinjaAtk/arr-scripts: Extended Container Scripts - Automation scripts to make life easier!](https://github.com/RandomNinjaAtk/arr-scripts)
	- [Ravencentric/awesome-arr: A collection of arrs and related stuff.](https://github.com/Ravencentric/awesome-arr?tab=readme-ov-file)
- Music
	- [Navidrome](https://www.navidrome.org/)
- Torrenting
	- [NZBGet - Usenet downloader](https://nzbget.net/)
- Resources
	- [Home media server with plex, sonarr, radarr, qbitorrent and overseerr - DEV Community](https://dev.to/rafaelmagalhaes/home-media-server-with-plex-sonarr-radarr-qbitorrent-and-overseerr-2a84)
