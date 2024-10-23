---
title: Bible Dashboard
description: A dashboard for organizing Bible notes, books, and verses.
tags:
  - bible
  - dashboard
author: Nicholas Stull
type: Bible
---
## 📚 **Bible Notes**

```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", dateCreated as "Date Created", file.mtime AS "Last modified", status as Status, chapter as "Volume/Chapter"
FROM "Notes" and !#verse
WHERE contains(type, "Bible") AND !contains(topic, "Bible-Study") 
SORT title ASC
```
---
## 📚 **Verses**

```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", dateCreated as "Date Created", file.mtime AS "Last modified",book as "Book", chapter as "Chapter"
FROM "Notes" and #verse 
WHERE contains(type, "Bible")
SORT title ASC
```

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