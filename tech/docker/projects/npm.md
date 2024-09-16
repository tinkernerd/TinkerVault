---
title: Nginx Proxy Manager
tags:
  - docker
  - Nginx
---
# Nginx Proxy Manager
___
> **Links**
> [Nginx Proxy Manager](https://nginxproxymanager.com/)

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
