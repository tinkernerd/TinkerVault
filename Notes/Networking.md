---
title: Networking
author: Nicholas Stull
description: Guides and resources for everything networking-related.
date: 2024-09-15
tags:
  - tech
  - networking
  - dash/net
topic:
  - Networking
type: Dashboard
cssclasses:
  - dashboard
category: Technology
---

# Networking

If it’s got an IP address, we’re all over it. From setting up VLANs to generating SSH keys, here’s everything you need to keep your network running smooth.

# Artificial Intelligence (AI)
## Notes
- Notes
`$=dv.list(dv.pages().where(p => p.topic && p.topic.includes("Ai") && p.type !== "Dashboard").sort(f => f.file.name, "asc").file.link)`

- Additional Resources
	- **AI Tools**: A curated list of the best AI-powered tools to boost your productivity and creativity.
	- **AI in Development**: How to leverage AI for software development, from smart code completion to debugging.
	- **Ethical AI**: Guidelines and best practices for using AI responsibly in development and beyond.

# Automation

Why do something yourself when a script can do it better, faster, and without complaining? This section is your go-to for automation tools and practices. We’re starting with Ansible, but there’s plenty more to come, so keep an eye out.
- Notes
`$=dv.list(dv.pages().where(p => p.topic && p.topic.includes("Automation") && p.type !== "Dashboard").sort(f => f.file.name, "asc").file.link)`

# SSH
- Notes
`$=dv.list(dv.pages().where(p => p.topic && p.topic.includes("ssh") && p.type !== "Dashboard").sort(f => f.file.name, "asc").file.link)`


# VPN Stuff {Black Magic?}
## VPN
- 🕵️‍♂️ VPN Notes
`$=dv.list(dv.pages().where(p => p.topic == "VPN").sort(f => f.file.name, "asc").file.link)`
- Docker VPN
	- [arch-delugevpn vs gluetun - compare differences and reviews? | LibHunt](https://www.libhunt.com/compare-arch-delugevpn-vs-gluetun)
	- [Help with Gluetun and the Arrs + Deluge : r/selfhosted](https://www.reddit.com/r/selfhosted/comments/13omr3s/help_with_gluetun_and_the_arrs_deluge/)
	- [binhex/arch-delugevpn: Docker build script for Arch Linux base with Deluge, Privoxy and OpenVPN](https://github.com/binhex/arch-delugevpn?tab=readme-ov-file)
- Docker VPN Clients
	- [Deluge BitTorrent Client](https://deluge-torrent.org/)
	- [DelugeVPN - DockSTARTer](https://dockstarter.com/apps/delugevpn/#installsetup)


---

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified"
FROM #Networking   AND "Notes"
SORT title ASC
```