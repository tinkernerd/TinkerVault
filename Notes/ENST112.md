---
title: Environmental Science (ENST 112)
author: Nicholas Stull
description: Weekly notes and resources for Environmental Science (ENST 112), covering class discussions and assignments.
date: 2024-09-15
tags:
  - environmental_science
  - enst112
  - weekly_notes
  - dash/classes
type: Resource
category: School
---

# Environmental Science (ENST 112)

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #enst112  AND "Notes"
WHERE type="Resource" or type="Class Note"
SORT dateCreated ASC
```

## Activities

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #enst112 AND "Notes"
WHERE type="Homework" OR type="Lab"
SORT dateCreated DESC
```

## Articles

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", articleDate as "Article Date"
FROM #enst112 or #environment AND "Notes" 
WHERE type="Article"
SORT dateCreated ASC
```
