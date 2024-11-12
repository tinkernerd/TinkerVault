---
title: Bible Dashboard
description: A dashboard for organizing Bible notes, books, and verses.
tags:
  - bible
  - dashboard
  - dash/personal
author: Nicholas Stull
type: Dashboard
category: Bible
cssclasses:
  - dashboard
---
## 📚 **Bible Notes**
Notes!
```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", dateCreated as "Date Created", file.mtime AS "Last modified", status as Status, chapter as "Volume/Chapter"
FROM "Notes" and !#verse
WHERE contains(category, "Bible") AND !contains(topic, "Bible-Study") AND !contains(type, "Dashboard")
SORT title ASC
```
---
## 📚 **Books!**
- [[Old Testament]]
- [[New Testament]]

---
## ✨ **Killing Kryptonite Bible Study Notes**

```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created",  status as Status, chapter as "Volume/Chapter"
FROM "Notes" AND #BibleStudy/killing-kryptonite 
WHERE contains(type, "Bible") AND contains(topic, "Bible-Study")
SORT title ASC
```
---