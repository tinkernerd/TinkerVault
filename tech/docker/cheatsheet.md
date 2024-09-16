---
title: Docker CLI Cheat Sheet
author: Docker
source: https://docs.docker.com/
description: A concise cheat sheet for Docker CLI commands, covering image management, container management, and general Docker usage.
date: 2024-09-15
tags:
  - Docker
  - CLI
  - Cheat
  - Sheet
  - Containers
  - DevOps
type: Article
topic:
  - Docker
  - Tech
---
# Docker CLI Cheat Sheet

This cheat sheet provides essential Docker CLI commands for managing images, containers, and general Docker operations.

---
## Image Management

- **Build an Image from a Dockerfile**
  ```bash
  docker build -t <image_name> .
  ```

- **Build an Image without the cache**
  ```bash
  docker build -t <image_name> . --no-cache
  ```

- **List local images**
  ```bash
  docker images
  ```

- **Delete an Image**
  ```bash
  docker rmi <image_name>
  ```

- **Remove all unused images**
  ```bash
  docker image prune
  ```

- **Publish an image to Docker Hub**
  ```bash
  docker push <username>/<image_name>
  ```

- **Search Docker Hub for an image**
  ```bash
  docker search <image_name>
  ```

- **Pull an image from Docker Hub**
  ```bash
  docker pull <image_name>
  ```

---

## Container Management

- **Create and run a container with a custom name**
  ```bash
  docker run --name <container_name> <image_name>
  ```

- **Run a container and publish ports to the host**
  ```bash
  docker run -p <host_port>:<container_port> <image_name>
  ```

- **Run a container in the background**
  ```bash
  docker run -d <image_name>
  ```

- **Start or stop an existing container**
  ```bash
  docker start|stop <container_name> (or <container-id>)
  ```

- **Remove a stopped container**
  ```bash
  docker rm <container_name>
  ```

- **Open a shell inside a running container**
  ```bash
  docker exec -it <container_name> sh
  ```

- **Fetch and follow the logs of a container**
  ```bash
  docker logs -f <container_name>
  ```

- **Inspect a running container**
  ```bash
  docker inspect <container_name> (or <container_id>)
  ```

- **List currently running containers**
  ```bash
  docker ps
  ```

- **List all containers (running and stopped)**
  ```bash
  docker ps --all
  ```

- **View resource usage stats of containers**
  ```bash
  docker container stats
  ```

---

## General Docker Commands

- **Start the Docker daemon**
  ```bash
  docker -d
  ```

- **Get help with Docker**
  ```bash
  docker --help
  ```

- **Display system-wide Docker information**
  ```bash
  docker info
  ```

---

## Additional Resources

- **Docker Hub**: A service provided by Docker for finding and sharing container images with your team. Visit: [https://hub.docker.com](https://hub.docker.com)
  
- **Docker Desktop Installation**: Docker Desktop is available for Mac, Linux, and Windows. Visit: [https://docs.docker.com/desktop](https://docs.docker.com/desktop)
  
- **Example Projects Using Docker**: Explore example projects that use Docker. Visit: [https://github.com/docker/awesome-compose](https://github.com/docker/awesome-compose)
  
- **Docker Documentation**: Check out the official Docker documentation for more information on using Docker. Visit: [https://docs.docker.com](https://docs.docker.com)

---

This markdown preserves the structure of the original PDF while enhancing it with additional metadata for easier navigation and categorization on your mkdocs site. Let me know if you need any modifications!