---
title: Recipe's
topic:
  - Recipe
type: Recipe
---
## Food
### Nothing Yet | Looking for Chicken
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #food  AND "Notes"
WHERE type=Recipe  
SORT title ASC
```
## Drinks
### Alcohol
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #drinks  and #Alcohol AND "Notes"
WHERE type="Recipe"
SORT title ASC
```

## Regular Drinks
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM #drinks  and !#Alcohol AND "Notes"
WHERE type="Recipe"
SORT title ASC
```
