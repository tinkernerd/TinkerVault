---
title: 
type: Article
author:
dateCreated: {{DATE:YYYY-MM-DD HH:mm:ss}}
articleDate: 
tags:
source: 
---
> [!NOTE]
```dataviewjs
const source = dv.current().source || "No source provided";
const authors = dv.current().author || "Unknown author";
const title = dv.current().title || "No title provided";

// Split authors by comma and trim spaces
let authorsList = authors.split(",").map(author => author.trim());

// Truncate the title after 4 words
let titleTruncated = title.split(" ").slice(0, 4).join(" ");
if (title.split(" ").length > 4) {
    titleTruncated += "...";
}

let authorsText;

if (authorsList.length === 1) {
    authorsText = authorsList[0];
} else {
    const lastAuthor = authorsList.pop();
    authorsText = `${authorsList.join(", ")}, and ${lastAuthor}`;
}

let noteBlock = `<div class="callout">
    <strong>Hey, this isn't my work.</strong>
    Feel free to check out <a href="${source}" target="_blank">${titleTruncated}</a>, by ${authorsText}.
</div>`;

dv.el("div", noteBlock);

```