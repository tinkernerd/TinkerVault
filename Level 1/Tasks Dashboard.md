---
created_at: 2024-01-26T13:16:15+05:30
modified_at: 2025-02-04T13:46:38-05:00
noteType: note
tags:
  - favorite
modified: 2025-02-05T21:36:58-05:00
---

```dataviewjs
await dv.view("Assets/Scripts/dvScripts/taskido", {
	pages: "", 
	view: "month", 
	firstDayOfWeek: "1", 
	dailyNoteFolder: "Daily Notes", 
	select: "Level 1/Inbox.md",
    inbox: "Level 1/Inbox.md",
	forward: true,
	options: "style1"
	})
```