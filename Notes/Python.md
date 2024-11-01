---
title: Python
author: Nicholas Stull
description: Python scripts, cheatsheets, and projects for all your coding needs.
date: 2024-09-15
tags:
  - tech
  - python
  - dash/programming
type: Dashboard
topic:
  - Tech
  - programming
  - Python
category: Programming
---


Python’s the workhorse of the coding world. From beginner cheatsheets to full-fledged projects, it’s all here. Dive in and start coding, bud.

## Topics

- [Python 229](ISYS%20229%20Notes%20-%20Python.md)
- [Virtual Environments](Venv.md)

### Notes

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #Python   AND "Notes"
WHERE type="Resource"
SORT dateCreated ASC
```

### Cheat Sheets
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #Python   AND "Notes"
WHERE type="CheatSheet"
SORT dateCreated ASC
```

### Projects

```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #Python   AND "Notes"
WHERE type="Project"
SORT dateCreated ASC
```

### Class Notes (ISYS 229)
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #isys229   AND "Notes"
SORT dateCreated ASC
```