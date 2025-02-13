---
title: GitHub
author: Nicholas Stull
description: Guides and resources for managing GitHub projects and repositories.
date: 2024-09-15
tags:
  - tech
  - github
  - dash/tech
topic:
  - Github
category: Info Tech
type: Dashboard
---

# GitHub

GitHub is where projects come to life. Whether you’re looking to manage your repositories, organize project resources, or sign releases, this section’s got everything you need. Have at ‘er!

## Notes

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, created_at as "Date Created", 
file.mtime AS "Last modified"  
WHERE category = "Development" AND contains(topic, "Github") AND type != "Dashboard"
SORT title ASC
```

## Git Notes

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, created_at as "Date Created", 
file.mtime AS "Last modified"  
WHERE category = "Development" AND contains(topic, "Git") AND type != "Dashboard"
SORT title ASC
```