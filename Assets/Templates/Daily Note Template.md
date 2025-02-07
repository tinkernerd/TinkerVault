<% "---" %>
<%* let aliases = await tp.system.prompt('Enter the sentence of the day:') 
tR += "aliases: " + aliases %>
id: daily-<% tp.file.title %>
tags: dailynote
Why: 
banner: https://i.imgur.com/hxMd3z1.jpg
banner_icon: 📅
banner_y: 0.68
created_at: <% tp.file.creation_date() %>
modified_at: <% tp.file.last_modified_date() %>
date: <% tp.file.title %>
<% "---" %>
<-<-  [[<% tp.date.now("YYYY-MM-DD",-1, tp.file.title, "YYYY-MM-DD") %>]]  <-  <% tp.file.title %>  ->  [[<% tp.date.now("YYYY-MM-DD",+1, tp.file.title, "YYYY-MM-DD") %>]]   ->->

<% tp.web.daily_quote() %>




---
# `=this.aliases`
## Tasks



---
## Things I am grateful for:
- 


## 🕊️ Daily Bible Verse

> [!bible] <% tp.web.request("https://beta.ourmanna.com/api/v1/get?format=json&order=daily", "verse.details.reference") %>
> <% tp.web.request("https://beta.ourmanna.com/api/v1/get?format=json&order=daily", "verse.details.text") %>  

### Reflection:

### Application:

## Glimpse of the day

**Dear Diary**,


*Ashutosh Thakur*

---
## 🗒️ Notes Made Today
```dataview
table file.name as "Note Title", file.mtime as "Last Modified"
FROM "Notes"
WHERE file.mtime = date(today)
SORT file.mtime DESC
```

---

## 💭 Additional Reflections
- Any extra thoughts or reflections for today.

