---
title: Daily Note - {{date}}
date: {{date}}
dateCreated: {{time:YYYY-MM-DDTHH:mm:ss}}
type: Daily
---

# Daily Note: {{date}}

 If it is to be works...fine, but then I must also ask for the legitimate yield I have coming from my works, so that they are meritorious. If it is to be grace--fine, but then I must also ask to be free from works-otherwise it surely is not grace. If it is to be works and nevertheless grace, that is indeed foolishness." Yes, that is indeed foolishness; that would also be true [[Lutheranism]]; that would indeed be Christianity. Christianity's requirement is this: your life should express works as strenuously as possible; then one thing more is required- that you humble yourself and confess: But my being saved is nevertheless grace. The error of the [[MiddleAges]], meritoriousness, was abhorred..
 
---
## 🕊️ Daily Bible Verse

```dataviewjs
const response = await fetch("https://labs.bible.org/api/?passage=random&type=json");
if (response.ok) {
    const verse = await response.json();
    const bibleVerse = verse[0];
    dv.span(`**${bibleVerse.bookname} ${bibleVerse.chapter}:${bibleVerse.verse}** - "${bibleVerse.text}"`);
} else {
    dv.span("Error fetching Bible verse.");
}
```

---
## 📆 What's Due Today
```tasks
not done
due today
```

---
## 📆 What's Due Tomorrow
```tasks
not done
due tomorrow
```

---

## 📝 Notes for Tomorrow
- note 1
---

## 📋 Today's Action Plan (Day Planner)
Insert your action plan items for today here.

---

## 🎓 Today I learned (TIL) [See full TIL list](TIL.md)
- Write down something new you learned today.

---

## 🗓️ Today's Events

### 🏠 Home
- [ ] Task 1 (e.g., Go shopping)
- [ ] Task 2 (e.g., Clean my room)

### 🏢 Work
- [ ] Task 1 (e.g., Finish report)
- [ ] Task 2 (e.g., Attend meeting)

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
