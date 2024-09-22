---
title: Environmental Science (ENST 112)
author: Nicholas Stull
description: Weekly notes and resources for Environmental Science (ENST 112), covering class discussions and assignments.
date: 2024-09-15
tags:
  - environmental_science
  - enst112
  - weekly_notes
categories:
  - Academic Resources
type: ClassNote
---

# Environmental Science (ENST 112)

Welcome to the weekly breakdown for **ENST 112: Environmental Science**. Each week’s notes, resources, and assignments are organized here to help keep everything on track.

## Weekly Notes
From ecosystems to environmental justice, this section holds everything related to Environmental Science. Perfect for those looking to understand the natural world and the impact humans have on it.

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #enst112  AND "Notes"
WHERE type="Class Note"
SORT dateCreated ASC
```

## Homework

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #enst112 AND "Notes"
WHERE type="Homework"
SORT dateCreated ASC
```

## Articles

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #environment AND "Notes"
WHERE type="Article"
SORT dateCreated ASC
```