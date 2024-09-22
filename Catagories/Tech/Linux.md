---
title: Linux
author: Nicholas Stull
description: Linux tips and resources for sysadmins and tinkerers.
date: 2024-09-15
tags:
  - tech
  - linux
categories:
  - Tech Resources
type: Resource
topic:
  - Linux
  - Tech
---

# Linux

Linux is where the magic happens. Whether you’re setting up servers or just exploring, this section has what you need.

## Topics


```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified", topic as Topic
FROM #linux AND "Notes"
WHERE type!="Installs"
SORT title ASC
```

### Installs
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified", topic as Topic
FROM #linux AND "Notes"
WHERE type="Installs"
SORT title ASC
```
