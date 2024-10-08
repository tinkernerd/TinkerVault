# 📝 Notes Dashboard

Welcome to the Articles Dashboard! Here’s where you can quickly access and manage all your writing projects.

---
## 📄 All Notes
```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Article", category as "Category", dateCreated as "Created", status as "Status", type as "Type"
FROM "Notes"
WHERE type!="Article"
SORT category asc
```
---
