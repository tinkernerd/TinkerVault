---
title: 
description: 
type: Resource
topic: 
category: 
created_at: 2025-02-08T23:08:03-05:00
modified_at: 2025-02-08T23:13:54-05:00
---
```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", created_at as "Date Created", file.mtime AS "Last modified", status as Status, chapter as "Volume/Chapter"
FROM "Notes/Info Tech"
WHERE !contains(category, "Info Tech")
SORT title ASC
```
