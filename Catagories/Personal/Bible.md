---
title: Bible Dashboard
description: A dashboard for organizing Bible notes, books, and verses.
tags:
  - bible
  - dashboard
author: Nicholas Stull
---
# 📖 **Bible Dashboard**
---

## 📚 **Books of the Bible**

```dataview
table file.name as "Note",
  file.cday as "Created",
  file.mday as "Last Modified",
  metadata.title as "Book Title",
  metadata.description as "Description",
  metadata.tags as "Tags"
from "Notes"
where contains(tags, "bible/book")
sort file.name asc
```

---
## ✨ **Killing Kryptonite Bible Study Notes**

```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created",  status as Status, chapter as "Volume/Chapter"
FROM "Notes"
WHERE contains(type, "Bible Study")
SORT title ASC
```
---
## ✨ **Other Notes**

```dataview
list
from "Notes" or "Journal"
where contains(tags, "bible/note")

```

Here you’ll find additional reflections, studies, and insights that don’t directly belong to any particular book but are essential for understanding the Bible more deeply.

---