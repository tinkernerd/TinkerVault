## SMC Notes

```dataview
TABLE dateCreated as "Date Created",  file.mtime AS "Last modified", status as Status
FROM #smc AND "Notes"
SORT title ASC
```
