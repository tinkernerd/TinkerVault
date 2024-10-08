## 📄 All Articles
```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Article", category as "Category", articleDate as "Created", status as "Status"
FROM "Notes"
WHERE type="Article"
SORT category asc
```
---
