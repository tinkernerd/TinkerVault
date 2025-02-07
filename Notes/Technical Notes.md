---
title: Technical Notes Hub
type: Dashboard/L1
category: Info Tech
created_at: 2025-02-06T00:05:57-05:00
modified_at: 2025-02-06T13:07:36-05:00
---
# ⛏️ Technical Notes Dashboard  

## Hard No Problems, Just Solutions

Alright, ya tech wizards, script slingers, and server samurais, welcome to **Tech Tinker Town**—where the command line is law and the logs never lie. Whether you’re knee-deep in PowerShell, Docker wrangling, or just tryna make a NAS behave, you’re in the right place. So, crack open a fresh terminal, grab some caffeine, and let’s get after it.


[!info]+ **Buddy, if you got a tech problem, well, that's a tech solution waiting to happen.**  
So let’s sort it out, quick-like.

## 📜 The Ledger of Knowledge (Tech Notes)

```dataview
LIST
WHERE category = "Info Tech" AND type = "Dashboard" 
SORT title ASC
```

## 🏗️ Big Shoots’ Toolbox (Resource Links)
- 🛠️ [Windows Sysinternals](https://docs.microsoft.com/en-us/sysinternals/)
- 🕵️‍♂️ [CyberSec Training](https://www.cybrary.it/)
- [📜 Markdown Guide](https://www.markdownguide.org/) – Format like a champ.


## The Chores
- [ ]  🚀 2025-02-04 📅 2025-02-09 ⏫ ➕ 2025-02-04 Organize Technical Notes Like a Pro


[!tip]+ **Keep’er Movin'**

> Got more notes? Add 'em up top, sort 'em, filter 'em, and Bob’s your uncle.

---
## All Notes
```dataview  
TABLE WITHOUT ID
link(file.path, title) AS "Note", type AS "Type", created_at AS "Date Created", file.mtime AS "Last Modified", status AS "Status", topic as "Topics"
FROM "Notes"
WHERE contains(category, "Info Tech") AND type != "Dashboard" AND type != "Dashboard/L1"
SORT title ASC

```

#### 🔧 Need to fix somethin’? Well, let’s get’er fixed.
