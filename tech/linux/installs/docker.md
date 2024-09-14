---
title: Docker
created: 2024-07-14T16:01:04 (UTC -04:00)
tags: [docker,install,script,ubuntu,docker,server,ubuntu,server,docker,install,docker,engine,ubuntu,install,docker,on,ubuntu,server,ubuntu,22.04,docker-ce,install,docker,engine,on,ubuntu,ubuntu,install,docker,ce,ubuntu,install,docker,engine]
source: https://docs.docker.com/engine/install/ubuntu/
author: 
---


---
To get started with Docker Engine on Ubuntu, make sure you [meet the prerequisites](#prerequisites), and then follow the [installation steps](#installation-methods).

## [Prerequisites](#prerequisites)

### [Firewall limitations](#firewall-limitations)

!!! Warning
    Before you install Docker, make sure you consider the following security implications and firewall incompatibilities.

-   If you use ufw or firewalld to manage firewall settings, be aware that when you expose container ports using Docker, these ports bypass your firewall rules. For more information, refer to [Docker and ufw](https://docs.docker.com/network/packet-filtering-firewalls/#docker-and-ufw).
-   Docker is only compatible with `iptables-nft` and `iptables-legacy`. Firewall rules created with `nft` are not supported on a system with Docker installed. Make sure that any firewall rulesets you use are created with `iptables` or `iptables6`, and that you add them to the `DOCKER-USER` chain, see [Packet filtering and firewalls](https://docs.docker.com/network/packet-filtering-firewalls/).

### [OS requirements](#os-requirements)

To install Docker Engine, you need the 64-bit version of one of these Ubuntu versions:

-   Ubuntu Noble 24.04 (LTS)
-   Ubuntu Mantic 23.10 (EOL: [July 12, 2024](https://wiki.ubuntu.com/Releases))
-   Ubuntu Jammy 22.04 (LTS)
-   Ubuntu Focal 20.04 (LTS)

Docker Engine for Ubuntu is compatible with x86\_64 (or amd64), armhf, arm64, s390x, and ppc64le (ppc64el) architectures.

### [Uninstall old versions](#uninstall-old-versions)

Before you can install Docker Engine, you need to uninstall any conflicting packages.

Distro maintainers provide unofficial distributions of Docker packages in APT. You must uninstall these packages before you can install the official version of Docker Engine.

The unofficial packages to uninstall are:

-   `docker.io`
-   `docker-compose`
-   `docker-compose-v2`
-   `docker-doc`
-   `podman-docker`

Moreover, Docker Engine depends on `containerd` and `runc`. Docker Engine bundles these dependencies as one bundle: `containerd.io`. If you have installed the `containerd` or `runc` previously, uninstall them to avoid conflicts with the versions bundled with Docker Engine.

Run the following command to uninstall all conflicting packages:
``` bash
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

`apt-get` might report that you have none of these packages installed.

Images, containers, volumes, and networks stored in `/var/lib/docker/` aren't automatically removed when you uninstall Docker. If you want to start with a clean installation, and prefer to clean up any existing data, read the [uninstall Docker Engine](#uninstall-docker-engine) section.

## [Installation methods]

You can install Docker Engine in different ways, depending on your needs:

-   Docker Engine comes bundled with [Docker Desktop for Linux](https://docs.docker.com/desktop/install/linux-install/). This is the easiest and quickest way to get started.
    
-   Set up and install Docker Engine from [Docker's `apt` repository](#install-using-the-apt-repository).
    
-   [Install it manually](#install-from-a-package) and manage upgrades manually.
    
-   Use a [convenience script](#install-using-the-convenience-script). Only recommended for testing and development environments.
    

### [Install using the `apt` repository]

Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

1.  Set up Docker's `apt` repository.
    ```bash
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc
    
    # Add the repository to Apt sources:
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
        $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    ```

    !!! Note
        If you use an Ubuntu derivative distro, such as Linux Mint, you may need to use `UBUNTU_CODENAME` instead of `VERSION_CODENAME`.
    
2.  Install the Docker packages. To install the latest version, run:
    
    ```bash
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    ```
    
    ___
    
3.  Verify that the Docker Engine installation is successful by running the `hello-world` image.
    
    This command downloads a test image and runs it in a container. When the container runs, it prints a confirmation message and exits.
    

You have now successfully installed and started Docker Engine.

!!! Tip
    Receiving errors when trying to run without root?
    The `docker` user group exists but contains no users, which is why you’re required to use `sudo` to run Docker commands. Continue to [Linux postinstall](https://docs.docker.com/engine/install/linux-postinstall) to allow non-privileged users to run Docker commands and for other optional configuration steps.



### [Install from a package](#install-from-a-package)

If you can't use Docker's `apt` repository to install Docker Engine, you can download the `deb` file for your release and install it manually. You need to download a new file each time you want to upgrade Docker Engine.

1.  Go to [`https://download.docker.com/linux/ubuntu/dists/`](https://download.docker.com/linux/ubuntu/dists/).
    
2.  Select your Ubuntu version in the list.
    
3.  Go to `pool/stable/` and select the applicable architecture (`amd64`, `armhf`, `arm64`, or `s390x`).
    
4.  Download the following `deb` files for the Docker Engine, CLI, containerd, and Docker Compose packages:
    
    -   `containerd.io_<version>_<arch>.deb`
    -   `docker-ce_<version>_<arch>.deb`
    -   `docker-ce-cli_<version>_<arch>.deb`
    -   `docker-buildx-plugin_<version>_<arch>.deb`
    -   `docker-compose-plugin_<version>_<arch>.deb`
5.  Install the `.deb` packages. Update the paths in the following example to where you downloaded the Docker packages.
    
    The Docker daemon starts automatically.
    
6.  Verify that the Docker Engine installation is successful by running the `hello-world` image.
    
    This command downloads a test image and runs it in a container. When the container runs, it prints a confirmation message and exits.
    

You have now successfully installed and started Docker Engine.

> **Tip**
> 
> Receiving errors when trying to run without root?
> 
> The `docker` user group exists but contains no users, which is why you’re required to use `sudo` to run Docker commands. Continue to [Linux postinstall](https://docs.docker.com/engine/install/linux-postinstall) to allow non-privileged users to run Docker commands and for other optional configuration steps.

## [Manage Docker as a non-root user](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)

The Docker daemon binds to a Unix socket, not a TCP port. By default it's the `root` user that owns the Unix socket, and other users can only access it using `sudo`. The Docker daemon always runs as the `root` user.

If you don't want to preface the `docker` command with `sudo`, create a Unix group called `docker` and add users to it. When the Docker daemon starts, it creates a Unix socket accessible by members of the `docker` group. On some Linux distributions, the system automatically creates this group when installing Docker Engine using a package manager. In that case, there is no need for you to manually create the group.

!!! Warning
    The `docker` group grants root-level privileges to the user. For details on how this impacts security in your system, see [Docker Daemon Attack Surface](https://docs.docker.com/engine/security/#docker-daemon-attack-surface).

!!!Note
    To run Docker without root privileges, see [Run the Docker daemon as a non-root user (Rootless mode)](https://docs.docker.com/engine/security/rootless/).

To create the `docker` group and add your user:

1.  Create the `docker` group.
    
2.  Add your user to the `docker` group.
    
3.  Log out and log back in so that your group membership is re-evaluated.
    
    !!! info
        If you're running Linux in a virtual machine, it may be necessary to restart the virtual machine for changes to take effect.
        You can also run the following command to activate the changes to groups:
    
4.  Verify that you can run `docker` commands without `sudo`.
    
    This command downloads a test image and runs it in a container. When the container runs, it prints a message and exits.
    
    If you initially ran Docker CLI commands using `sudo` before adding your user to the `docker` group, you may see the following error:
    
    This error indicates that the permission settings for the `~/.docker/` directory are incorrect, due to having used the `sudo` command earlier.
    
    To fix this problem, either remove the `~/.docker/` directory (it's recreated automatically, but any custom settings are lost), or change its ownership and permissions using the following commands:
    

## [Configure Docker to start on boot with systemd](https://docs.docker.com/engine/install/linux-postinstall/#configure-docker-to-start-on-boot-with-systemd)

Many modern Linux distributions use [systemd](https://systemd.io/) to manage which services start when the system boots. On Debian and Ubuntu, the Docker service starts on boot by default. To automatically start Docker and containerd on boot for other Linux distributions using systemd, run the following commands:

To stop this behavior, use `disable` instead.

You can use systemd unit files to configure the Docker service on startup, for example to add an HTTP proxy, set a different directory or partition for the Docker runtime files, or other customizations. For an example, see [Configure the daemon to use a proxy](https://docs.docker.com/config/daemon/proxy/#systemd-unit-file).

## [Configure default logging driver](https://docs.docker.com/engine/install/linux-postinstall/#configure-default-logging-driver)

Docker provides [logging drivers](https://docs.docker.com/config/containers/logging/) for collecting and viewing log data from all containers running on a host. The default logging driver, `json-file`, writes log data to JSON-formatted files on the host filesystem. Over time, these log files expand in size, leading to potential exhaustion of disk resources.

To avoid issues with overusing disk for log data, consider one of the following options:

-   Configure the `json-file` logging driver to turn on [log rotation](https://docs.docker.com/config/containers/logging/json-file/).
-   Use an [alternative logging driver](https://docs.docker.com/config/containers/logging/configure/#configure-the-default-logging-driver) such as the ["local" logging driver](https://docs.docker.com/config/containers/logging/local/) that performs log rotation by default.
-   Use a logging driver that sends logs to a remote logging aggregator.

