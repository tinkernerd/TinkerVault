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
  - Tech
category: Programming
type: Dashboard
---

# GitHub

GitHub is where projects come to life. Whether you’re looking to manage your repositories, organize project resources, or sign releases, this section’s got everything you need. Have at ‘er!

## Topics

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified"  
FROM #github   AND "Notes"
SORT title ASC
```