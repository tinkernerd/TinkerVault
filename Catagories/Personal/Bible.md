---
title: Bible Dashboard
description: A dashboard for organizing Bible notes, books, and verses.
tags:
  - bible
  - dashboard
author: Nicholas Stull
---
# 📖 **Bible Dashboard**

Welcome to your Bible Study Dashboard! Here, you'll find all your notes organized by the books of the Bible and any additional notes you may have on scripture, themes, or theological insights.

---

## 🗓️ **Daily Bible Verse**

```dataview
table file.name as "Note", metadata.dateCreated as "Date Added", 
  regexmatch("(?<=\\[!bible\\]\\+ Verse of the Day \\[.*?\\]\\(.*?\\)\\n> )(.*?)(?=\\n)", this.file.content) as "Verse"
from "Journal"
where contains(tags, "dailyverse")
sort metadata.dateCreated ASC
```
---
```dataview
TABLE WITHOUT ID  
link(file.path, title) AS "Note", dateCreated as "Date Added", 
regexmatch("(?<=\\[!bible\\]\\+ Verse of the Day \\[.*?\\]\\(.*?\\)\\n> )(.*?)(?=\\n)", this.file.content) as "Verse"
FROM "Journal" AND #dailyverse 
SORT default(dateCreated, "") desc
```
## 📚 **Books of the Bible**

```dataview
table file.name as "Note",
  file.cday as "Created",
  file.mday as "Last Modified",
  metadata.title as "Book Title",
  metadata.description as "Description",
  metadata.tags as "Tags"
from "Notes"
where contains(tags, "bible/book")
sort file.name asc
```

Each book is separated by its own tag, making it easy to find your notes for each book of the Bible. Metadata like author and date added help you track your study progress.

---

## ✨ **Other Notes**

```dataview
list
from "Notes" or "Journal"
where contains(tags, "bible/note")

```

Here you’ll find additional reflections, studies, and insights that don’t directly belong to any particular book but are essential for understanding the Bible more deeply.

---

## 🔖 **Highlighted Verses**

```dataview
table
  file.name as "Verse",
  metadata.title as "Verse Title",
  metadata.description as "Verse Description",
  metadata.dateCreated as "Date Added",
  metadata.tags as "Tags"
from "Notes" or "Journal"
where contains(tags, "bible/verse")
sort metadata.dateCreated desc
```

These are key verses or passages that you’ve marked as important or meaningful during your study. The metadata allows you to add a short description or context for each verse.

---


