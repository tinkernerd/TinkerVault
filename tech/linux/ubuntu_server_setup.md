---
title: Ubuntu Server Setup Guide
Author: Nick Stull
---

# Ubuntu Server Setup Guide


!!! note
	Use the Script in Github
	- [Server Setup](https://github.com/tinkernerd/Server-Setup)
	- [Pull and Run](https://github.com/tinkernerd/Pull-and-Run)

## Introduction
- Brief overview of the guide
- Purpose of setting up an Ubuntu server

## Prerequisites
- Hardware requirements
- Software requirements

## Downloading Ubuntu Server ISO
- Official sources to download the ISO
- Choosing the right version

## Creating a Bootable Drive
- Tools required for creating a bootable USB drive
- Step-by-step instructions for Windows, macOS, and Linux

## Setting Up Ubuntu Server via Proxmox
- [ View Guide Here](proxmox/prox_vm_setup_guide.md)

## Installing Ubuntu Server
- Booting from the bootable drive or VM
- Installation process walkthrough
  - Language and keyboard layout selection
  - Network configuration
  - Disk partitioning and formatting
  - Setting up users and passwords
  - Installing the base system

## Post-Installation Setup
- Updating and upgrading the system
- Installing essential packages

## Setting Up SSH
- Installing the OpenSSH server
- Configuring SSH (editing `/etc/ssh/sshd_config`)
- Setting up firewall rules for SSH access

## Importing SSH Keys
- Generating SSH keys (if necessary)
- Importing SSH keys for passwordless login
- Best practices for SSH key management

## Changing DNS towards Serv01
[For updated dns IP and backup](dns.md)
1. ``` sudo nano /etc/resolv.conf ```
2. Change/add lines:
  ``` nano
  nameserver 10.0.0.140
  search nicholasstull.com
  ```

## Conclusion
- Summary of the setup process
- Next steps and additional resources