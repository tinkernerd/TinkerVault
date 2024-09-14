---
title: Netboot XYZ
---
# NetBoot XYZ
----
**[Netboot.xyz](https://netboot.xyz/)**

[![Meet netboot.xyz - Network Boot Any Operating System](https://www.youtube.com/watch?v=4btW5x_clpg)

>**Docker Compose**

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

