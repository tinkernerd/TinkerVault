---
title: Docker
author: Nicholas Stull
description: All about containerizing your applications using Docker.
date: 2024-09-15
tags:
  - tech
  - docker
topic:
  - Docker
type: Resource
---

# Docker

Here’s where you’ll find everything you need to know about Docker, from networking tips to ready-to-use templates. Time to ship, bud.

## Topics

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified"  
FROM #docker AND "Notes"
WHERE type!="Project"
SORT title ASC
```

## Docker Projects

Here’s where all the Docker magic happens. From building media servers to setting up networking solutions, these projects show the power of containerization. Ready to ship? Let’s get started.

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified"  
FROM #docker AND "Notes"
WHERE type="Project"
SORT title ASC
```