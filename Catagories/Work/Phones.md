# Email Templates

```dataview
TABLE dateCreated as "Date Created",  file.mtime AS "Last modified", status as Status
FROM #smc and #phones  AND "Notes"
SORT title ASC
```
