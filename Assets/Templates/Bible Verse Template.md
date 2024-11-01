<%*
const dateCreated = tp.date.now("YYYY-MM-DDTHH:mm:ss"); 

// Construct the template content
let templateContent = `
---
title: 
dateCreated: ${dateCreated}
type: Bible
tags:
  - bible/verse
  - bible/book/
  - verse
Chapter:
Book:
---

# 
## Verses

---
## Personal Reflections

- What does this verse mean to me?
- How does this verse apply to my life today?
- What actions can I take to live out this verse?

---

## Notes
- Any additional insights or thoughts?
`;

// Output the constructed content
tR += templateContent;
%>
