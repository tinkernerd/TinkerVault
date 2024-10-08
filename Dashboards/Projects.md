## All Projects by status

```dataview
TABLE WITHOUT ID  
link(file.path, title) as "Project", status as "Status"
FROM "Notes"
WHERE type="Project"
SORT link(file.path, title) asc 
```
