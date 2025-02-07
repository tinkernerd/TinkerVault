---
title: Macintosh
type: Dashboard
topic:
  - MacOs
category: Info Tech
created_at: 2025-02-06T15:24:44-05:00
modified_at: 2025-02-06T15:28:09-05:00
---
# 🍏 Welcome to Mac Hacks & Snack Packs! 🍏
___

Oh, so you fancy yourself a Mac user, eh? Big fan of the ol’ **command + space** magic, are ya? Well, welcome to the **Mac Hacks & Snack Packs** section—where we **fix what ain't broke, automate what’s already easy, and make Apple’s “it just works” actually work.** So grab a double-double, update yer brew, and let's get Macin'!

## 🍏 Explore Your Mac Notes:
```dataview  
TABLE WITHOUT ID
link(file.path, title) AS "Note", type AS "Type", created_at AS "Date Created", file.mtime AS "Last Modified", status AS "Status"
FROM "Notes"
WHERE contains(topic, "MacOs") AND type != "Dashboard" AND type != "Project"
SORT title ASC
```

---

## Tasks

- [ ]  🍎 2025-02-06 📅 2025-02-10 🔧 Clean up redundant Mac automation scripts
- [ ]  🍏 2025-02-08 📅 2025-02-12 💡 Add new shortcuts cheat sheet

### All Notes

```dataview
TABLE WITHOUT ID
link(file.path, title) AS "Note", type AS "Type", dateCreated AS "Date Created", file.mtime AS "Last Modified", status AS "Status"
FROM "Notes"
WHERE contains(category, "Mac") AND type != "Dashboard"
SORT title ASC
```

---

## 📚 Quick Links & Resources

🍏 [Official macOS Shortcuts](https://support.apple.com/en-us/HT201236)  
🍺 [Homebrew - The Missing Package Manager](https://brew.sh/)  
🔧 [macOS Terminal Commands Cheat Sheet](https://ss64.com/osx/)  
💻 [Obsidian Mac Keyboard Shortcuts](https://help.obsidian.md/Editing+and+formatting/Keyboard+shortcuts)

---

Alright, bud, fire up that **terminal** like you mean it, don’t let that **kernel panic** ruin yer day, and always remember: **“Reboot it, ya filthy animal.”** 🍏💻

```

This keeps it **Letterkenny-fun**, but also **useful** for your **Mac/macOS** note management with **Dataview queries**. Let me know if you need tweaks! 🚀
```