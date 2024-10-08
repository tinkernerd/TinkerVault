# 📝 Article Dashboard

Welcome to the Articles Dashboard! Here’s where you can quickly access and manage all your writing projects.

---
## 📄 Recent Articles
```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Article", category as "Category", articleDate as "Created", status as "Status"
FROM "Notes"
WHERE type="Article" AND status="Active"
SORT dateCreated asc
```
---

---
## 📄 All Articles
```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Article", category as "Category", articleDate as "Created", status as "Status"
FROM "Notes"
WHERE type="Article"
SORT category asc
```
---
