---
category: Bible
type: Scripture
---
# OLD
```dataviewjs
$=dv.table(["Note", "Book#", "Banner"],
    dv.pages()
    .where(p => p.category == "Bible" && p.Testament == "Old" && p.type == "Dashboard")
    .sort(f => f["book#"], "asc")
    .map(p => [
        p.file.link,
        p["book#"], // Displays the Book# metadata
        p.banner ? "Yes" : "No"
    ])
)
```


# NEW
```dataviewjs
$=dv.table(["Note", "Book#", "Banner"],
    dv.pages()
    .where(p => p.category == "Bible" && p.Testament == "New" && p.type == "Dashboard")
    .sort(f => f["book#"], "asc")
    .map(p => [
        p.file.link,
        p["book#"], // Displays the Book# metadata
        p.banner ? "Yes" : "No"
    ])
)
```

