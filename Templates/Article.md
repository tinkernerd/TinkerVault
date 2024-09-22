---
title: 
source: 
author:
---
# {{page.meta.title}}
> [!NOTE]
```dataviewjs
const source = dv.current().source || "No source provided";
const author = dv.current().author || "Unknown author";

let noteBlock = `<div class="callout">
    <strong>Hey, this isn't my work.</strong>
    Feel free to check out the <a href="${source}" target="_blank">original article</a>, by ${author}.
</div>`;

dv.el("div", noteBlock);
```