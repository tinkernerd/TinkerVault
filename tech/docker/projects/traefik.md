---
title: Traefik
---

# Traefik
📺 [Watch Video](https://www.youtube.com/watch?v=n1vOfdz5Nm8)


For reference, the following folder structure was used:

```bash
./traefik
├── data
│   ├── acme.json
│   ├── config.yml
│   └── traefik.yml
└── cf_api_token.txt
└── docker-compose.yml
```


## Docker Setup

See [this](../../Linux/Installs/Docker.md) on how to install `docker` and `docker-compose`

## Create Folders

Create folder and files for traefik 
```bash
mkdir traefik && touch cf_api_token.txt && mkdir traefik/data && touch acme.json config.yml traefik.yml 
```

## Fill files using Nano

### Docker-Compose
Traefik `docker-compose.yaml`

```yaml
version: "3.8"
services:
  traefik:
    image: traefik:v3.0
    container_name: traefik
    restart: unless-stopped
    security_opt:
      - no-new-privileges:true
    ports:
      - 80:80
      - 443:443
      # - 443:443/tcp # Uncomment if you want HTTP3
      # - 443:443/udp # Uncomment if you want HTTP3
    network_mode: "host"
    environment:
      - CF_DNS_API_TOKEN_FILE=/run/secrets/cf_api_token # note using _FILE for docker secrets
      - TRAEFIK_DASHBOARD_CREDENTIALS=${TRAEFIK_DASHBOARD_CREDENTIALS}
      - PUID=0
      - PGID=0
      - TZ=America/Detroit
    secrets:
      - cf_api_token
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./data/traefik.yml:/traefik.yml:ro
      - ./data/acme.json:/acme.json
      - ./data/config.yml:/config.yml:ro
    labels:
      - traefik.enable=true
      - traefik.http.routers.traefik.entrypoints=http
      - traefik.http.routers.traefik.rule=Host(`traefik-dashboard.lan.nicholasstull.com`)
      - traefik.http.middlewares.traefik-auth.basicauth.users=${TRAEFIK_DASHBOARD_CREDENTIALS}
      - traefik.http.middlewares.traefik-https-redirect.redirectscheme.scheme=https
      - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
      - traefik.http.routers.traefik.middlewares=traefik-https-redirect
      - traefik.http.routers.traefik-secure.entrypoints=https
      - traefik.http.routers.traefik-secure.rule=Host(`traefik-dashboard.lan.nicholasstull.com`)
      - traefik.http.routers.traefik-secure.middlewares=traefik-auth
      - traefik.http.routers.traefik-secure.tls=true
      - traefik.http.routers.traefik-secure.tls.certresolver=cloudflare
      - traefik.http.routers.traefik-secure.tls.domains[0].main=nicholasstull.com
      - traefik.http.routers.traefik-secure.tls.domains[0].sans=*.nicholasstull.com
      - traefik.http.routers.traefik-secure.tls.domains[1].sans=*.lan.nicholasstull.com
      - traefik.http.routers.traefik-secure.tls.domains[2].sans=*.tv.nicholasstull.com
      - traefik.http.routers.traefik-secure.service=api@internal
secrets:
  cf_api_token:
    file: ./cf_api_token.txt
networks:
  proxy:
    external: true
```

### Traefik.yaml

`traefik.yml`

```yaml
api:
  dashboard: true
  debug: true
entryPoints:
  http:
    address: ":80"
    http:
      redirections:
        entryPoint:
          to: https
          scheme: https
  https:
    address: ":443"
serversTransport:
  insecureSkipVerify: true
providers:
  docker:
    endpoint: "unix:///var/run/docker.sock"
    exposedByDefault: false
  file:
    filename: /config.yml
certificatesResolvers:
  cloudflare:
    acme:
      email: nicholasp.stull@gmail.com
      storage: acme.json
      # caServer: https://acme-v02.api.letsencrypt.org/directory # prod (default)
      caServer: https://acme-staging-v02.api.letsencrypt.org/directory # staging
      dnsChallenge:
        provider: cloudflare
        #disablePropagationCheck: true # uncomment this if you have issues pulling certificates through cloudflare, By setting this flag to true disables the need to wait for the propagation of the TXT record to all authoritative name servers.
        #delayBeforeCheck: 60s # uncomment along with disablePropagationCheck if needed to ensure the TXT record is ready before verification is attempted 
        resolvers:
          - "1.1.1.1:53"
          - "1.0.0.1:53"
```
### Config.yaml
`config.yml`

```yaml
http:
  #region routers
  routers:
    vpn:
      entryPoints:
        - "https"
      rule: "Host(`vpn.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: vpn
    docsext:
      entryPoints:
      - "https"
      rule: "Host(`docs.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: docs   
    proxmox:
      entryPoints:
        - "https"
      rule: "Host(`proxmox.lan.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: proxmox
    cockpit:
      entryPoints:
      - "https"
      rule: "Host(`cockpit.lan.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: cockpit
    qbit:
      entryPoints:
      - "https"
      rule: "Host(`tor.tv.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: qbit
    NAS:
      entryPoints:
      - "https"
      rule: "Host(`nas.lan.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: nas
    Docs-internal:
      entryPoints:
      - "https"
      rule: "Host(`docs.lan.nicholasstull.com`)"
      middlewares:
        - default-headers
        - https-redirectscheme
      tls: {}
      service: docs
   
  #endregion

  #region services
  services:
    qbit:
      loadBalancer:
        servers:
          - url: "http://10.0.0.170:8085"
        passHostHeader: true
    vpn:
      loadBalancer:
        servers:
          - url: "https://10.0.0.153:943"
        passHostHeader: true
    cockpit:
      loadBalancer:
        servers:
          - url: "https://10.0.0.170:9090"
        passHostHeader: true
    proxmox:
      loadBalancer:
        servers:
          - url: "https://10.0.0.225:8006"
        passHostHeader: true
    nas:
      loadBalancer:
        servers:
          - url: "https://10.0.0.193:5001"
        passHostHeader: true
    docs:
      loadBalancer:
        servers:
          - url: "https://10.0.0.204:8000"
        passHostHeader: true
             
  #endregion

  middlewares:
    https-redirectscheme:
      redirectScheme:
        scheme: https
        permanent: true

    default-headers:
      headers:
        frameDeny: true
        browserXssFilter: true
        contentTypeNosniff: true
        forceSTSHeader: true
        stsIncludeSubdomains: true
        stsPreload: true
        stsSeconds: 15552000
        customFrameOptionsValue: SAMEORIGIN
        customRequestHeaders:
          X-Forwarded-Proto: https
  

    secured:
      chain:
        middlewares:
        - default-whitelist
        - default-headers
```

## CloudFlare API Token Secret
```bash
nano cf_api_token.txt
```
Paste your token into file from Cloudflare

## Create Docker Network
```bash
docker network create proxy
```

### Traefik Dashboard Password & .env

make sure you have `htpasswd` installed.

To install on Linux

```bash
sudo apt update
sudo apt install apache2-utils
```

Mac OS (should already be installed)

Windows

`htpasswd.exe` Should already be installed on Windows

Generate credential pair

```bash
echo $(htpasswd -nB user) | sed -e s/\\$/\\$\\$/g
```

```bash
touch .env
nano .env
```

paste your credential pair:

e.g.

```bash
TRAEFIK_DASHBOARD_CREDENTIALS=user:$$2y$$05$$lSaEi.G.aIygyXRdiFpt7OqmUMW9QUG5I1N.j0bXoXxIjxQmoGOWu
```

## Start the stack

```bash
docker compose up -d --force-recreate
```



---------------------
## Switch to Production Acme Endpoints

```yaml
...
      caServer: https://acme-v02.api.letsencrypt.org/directory # prod (default)
      #caServer: https://acme-staging-v02.api.letsencrypt.org/directory # staging
...
```

Clear out the existing staging certificates

```bash
cd data
nano acme.json
```

Clear and save

Restart the stack

```bash
docker compose up -d --force-recreate
```

------------------------------------
### Add Container to Traefik
1. labels:
```yaml 
labels:
      - traefik.enable=true
      - traefik.http.routers.${Container_Name}.entrypoints=https
      - traefik.http.routers.${Container_Name}.rule=Host(`radarr.tv.nicholasstull.com`)
      - traefik.http.routers.${Container_Name}.tls=true
      - traefik.http.services.${Container_Name}.loadbalancer.server.port=7878
      - traefik.docker.network=proxy
```
2. networks @ End
```yaml
networks:
  proxy:
    external: true
```
### Error Links:
1. Use of Network Error
- [Use of closed network connection error](https://community.traefik.io/t/use-of-closed-network-connection-error/18991)
- [Traefik Error use of closed network connection](https://stackoverflow.com/questions/73257116/traefik-error-use-of-closed-network-connection)
2. Gateway Timeout
- [Traefic docker container Gateway timeout](https://www.reddit.com/r/Traefik/comments/oitn19/traefic_docker_container_gateway_timeout/)
- [https://community.traefik.io/t/issue-gateway-timeout-when-using-traefik-and-exposing-port-with-docker/8858/4](https://community.traefik.io/t/issue-gateway-timeout-when-using-traefik-and-exposing-port-with-docker/8858/4)


## Troubleshooting

Common ways to troubleshoot

```bash
docker ps
docker logs traefik
docker exec -it traefik /bin/sh
```

inside of container

```bash
top
ls
cat acme.json
cat traefik.yml
ls /run/secrets
cat /run/secrets/cf_api_token
echo ${CF_DNS_API_TOKEN_FILE}
echo ${TRAEFIK_DASHBOARD_CREDENTIALS}
```

## DNS

```bash
nslookup traefik-dashboard.local.example.com
```
