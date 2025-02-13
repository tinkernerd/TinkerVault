---
title: Photography
author: Nicholas Stull
description: A collection of photography notes, guides, and resources for improving photography skills and techniques.
created_at: 2024-09-15
tags:
  - photography
  - guides
  - tips
topic:
  - Photography
type: Dashboard/L1
category: Photography
---
# Photography
Add Dataview for Photography Notes
`$=dv.list(dv.pages().where(p => p.category == "Photography" && p.type != "Dashboard").sort(f => f.file.name, "desc").file.link)`
