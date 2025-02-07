---
title: Bible Dashboard
description: A dashboard for organizing Bible notes, books, and verses.
tags:
  - bible
  - dashboard
  - dash/personal
type: Dashboard/L1
category: Bible
cssclasses:
  - dashboard
---
## 📚 **Bible Notes**
```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", created_at as "Date Created", file.mtime AS "Last modified", status as Status, chapter as "Volume/Chapter"
FROM "Notes"
WHERE contains(category, "Bible") AND !contains(topic, "Bible-Study") AND !contains(type, "Dashboard")
SORT title ASC
```
---
## 📚 **Books!**
- [[Old Testament Overview]]
- [[New Testament Overview]]

---

# Tasks
- [x] 🛫 2025-02-04 📅 2025-02-09 ⏫ ➕ 2025-02-04 Move Bible Notes over to Personal from TVTR and TinkerDocs ✅ 2025-02-05
- [x] 🛫 2025-02-04 🔽 ➕ 2025-02-04  Keep creating breakdowns and adding video ✅ 2025-02-05

---
## ✨ **Bible Study Notes**

```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, created_at as "Date Created",  status as Status, chapter as "Volume/Chapter"
FROM "Notes" AND #BibleStudy
WHERE contains(category, "Bible") AND contains(topic, "Bible-Study") AND !contains(type, "Dashboard")
SORT title ASC
```
---