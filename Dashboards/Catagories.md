## Notes by topic

Excludes fleeting notes.

### Active, Holding, Planned, Maybe

```dataview
TABLE sort(rows.file.link) AS "Note"
FROM "Notes"
WHERE type="Resource" AND status!="Archive" AND type!="Fleeting"
FLATTEN category
GROUP BY category
```

### Archive

```dataview
TABLE sort(rows.file.link) AS "Note"
FROM "Notes"
WHERE type="Resource" AND status="Archive" AND type!="Fleeting"
FLATTEN category
GROUP BY category
```