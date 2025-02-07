---
modified_at: 2025-02-04T13:46:23-05:00
cssclasses:
  - wide-page
  - cards
tags: 
banner: https://images.unsplash.com/photo-1581574919402-5b7d733224d6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wzNjAwOTd8MHwxfHNlYXJjaHwxfHxnb2FsfGVufDB8MHx8fDE3MDY2MTEyMTR8MA&ixlib=rb-4.0.3&q=80&w=1080
banner_y: 0.608
banner_icon: 
id: goal-moc
goals: []
modified: 2025-02-05T21:39:43-05:00
---

```dataviewjs
let goals = dv.pages('"Level 1/Goals"'); 
dv.table(["Goal", "Target", "Deadline", "Progress"],
goals.map(goal => [
`<div style="position: relative; overflow: hidden; width: 100%; height: 200px;"> <img src="${goal.banner}" alt="Banner" style="object-fit: cover; object-position: center; width: 100%; height: 100%;"> <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></div>
</div>`, `<span style="font-size: 1.1em;">${goal.file.link}</span>`,
goal.deadline,
`<progress value="${goal.progress}" max="${goal.target}"></progress><br>${Math.round((goal.progress / goal.target) * 100)}% completed` ]) );
dv.container.classList.add("cards-align-top");
```


















