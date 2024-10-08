# 📝 Notes Dashboard

Welcome to the Articles Dashboard! Here’s where you can quickly access and manage all your writing projects.

---
## Notes - Resources
```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Article", category as "Category", dateCreated as "Created", status as "Status", type as "Type"
FROM "Notes"
WHERE type="Resource"
SORT category asc
```
---
## Notes - Resources
```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Article", category as "Category", dateCreated as "Created", status as "Status", type as "Type"
FROM "Notes"
WHERE type!="Resource" AND type!="Article" AND type!="Project"
SORT category asc
```