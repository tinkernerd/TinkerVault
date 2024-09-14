---
title: Docker Compose Template
---
# Docker Compose Template

.env
```env
Container_Name=Example
P1=8080
```
compose.yml

```yml
version: '3.7'

services:
  Example:
    image: image/image
    container_name: ${Container_Name}
    networks:
    - proxy
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
    volumes:
      - /path/to/config:/config
    ports:
      - Host:Container
      - ${P1}:${P1}
    labels:
      - traefik.enable=true
      - traefik.http.routers.${Container_Name}.entrypoints=https
      - traefik.http.routers.${Container_Name}.rule=Host(`Example.lan.nicholasstull.com`)
      - traefik.http.routers.${Container_Name}.tls=true
      - traefik.http.services.${Container_Name}.loadbalancer.server.port=${P1}
    restart: unless-stopped
networks:
  proxy:
    external: true

```