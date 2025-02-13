---
banner: https://i.imgur.com/9ZJBvN8.jpg
created_at: 2024-01-30T11:38:56+05:30
modified_at: 2025-02-10T09:58:01-05:00
tags:
  - homepage
  - followup
banner_y: 0.446
banner-display: cover
---
## Categories
- [[Aviation]] #mcl/list-column
- [[The Bible]]
- [[Development]]
- [[Electrical]]
- [[Networking]]
- [[Recipes]]
- [[Technical Notes]]
- [[Photography]]
## 📘 Glossaries
- [[Aviation Glossary]] #mcl/list-column
- [[Bible Glossary]]
- [[Tech Glossary]]
## 🧰 Level 1 - Utilities
- [[Tasks Dashboard]] #mcl/list-column
- [[🗄️ Goals Dashboard]] 
- [[Tasks Calendar]]
- [[Inbox]]

## Level 2
- [[Exercises]] #mcl/list-column
- [[Quote Book]]
- [[Dummy Maths Note]]

## Tasks Due Today - [[Tasks Dashboard| All Tasks]]
```dataviewjs
await dv.view("Assets/Scripts/dvScripts/taskido", {
	pages: "", 
	view: "month", 
	firstDayOfWeek: "1", 
	dailyNoteFolder: "Daily Notes", 
	select: "Level 1/Inbox.md",
    inbox: "Level 1/Inbox.md",
	forward: true,
	options: "style1 todayFocus",
	section: "## Tasks"
	})
```
## Goals

 ```dataviewjs
 let goals = dv.pages('"Level 1/Goals"');
 dv.table(["Goal", "Deadline", "Progress"],
 goals.map(goal => [
 `<span style="font-size: 1.2em;">${goal.file.link}</span>`,
 goal.deadline,
 `<progress value="${goal.progress}" max="${goal.target}"></progress><br>${Math.round((goal.progress / goal.target) * 100)}% completed`
 ])
 );
```
