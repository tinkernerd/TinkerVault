---
tags:
  - graphHidden
cssclasses:
  - sidebar
noteType: page
modified_at: 2025-02-06T21:30:18-05:00
modified: 2025-02-05T21:38:03-05:00
---
##### [[🏠 Homepage]]
### Categories
- [[Aviation]]
- [[The Bible]]
- [[Development]]
- [[Electrical]]
- [[Networking]]
- [[Radios]]
- [[Recipes]]
- [[Technical Notes]]
- [[Linux]]

### 📘 Glossaries
- [[Aviation Glossary]] 
- [[Tech Glossary]]

### Favorites
```dataview
LIST
FROM #favorite
SORT file.mtime DESC
```
### Quick Notes
```dataviewjs
const notes = dv.pages('"Notes/Quick Notes"')
if (notes.length){
  dv.list(notes.file.link)
}
else{
  dv.span('- ? Not any Quick Notes Found')
}
```
### Follow Up Notes
```dataviewjs
const notes = dv.pages('#followup')
if (notes.length){
  dv.list(notes.file.link)
}
else{
  dv.span('- ? Not any FollowUp Notes Found')
}
```
### Recents

#### Last Opened
```dataviewjs
dv.list(app.workspace.recentFileTracker.lastOpenFiles.map(x=>dv.fileLink(x)).slice(0, 7))
```
---
#### Last Modified
```dataview
LIST
FROM ""
SORT file.mtime DESC
LIMIT 7
```
