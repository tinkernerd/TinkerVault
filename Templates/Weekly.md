---
title: 'Weekly Planner: Week <% tp.date.now("YYYY-MM-DD", -tp.file.creation_date()) %> to <% tp.date.now("YYYY-MM-DD", tp.date.now("WW")+7) %>'
tags:
  - planner
  - weekly
  - ISYS115
  - ENST112
  - task
dateCreated: { time:YYYY-MM-DDTHH:mm:ss } 
type: Weekly
week: <% tp.date.now("YYYY-MM-DD", -tp.file.creation_date()) %> to <% tp.date.now("YYYY-MM-DD", tp.date.now("WW")+7) %>
---
<%*
let week = moment(tp.file.title);
// Monday - Tuesday - Wednesday - Thursday - Friday - Saturday - Sunday
for (let day = 0; day < 7; day++) {
    tR += '[[' + week.weekday(day).format('YYYY-MM-DD|dddd') + ']]';
    if (day < 6) {
        tR += ' - ';
    }
}
%>

---
# Weekly Planner: Week <% tp.date.now("YYYY-MM-DD", -tp.file.creation_date()) %> to <% tp.date.now("YYYY-MM-DD", tp.date.now("WW")+7) %>
---

## Summary
A summary of the week's focus or any key things to remember.

---


## Other Tasks / Things to Do
### Personal


### Work/Projects


### General Notes / To-Do
- Any extra notes or to-do items for the week.

---

## Additional Notes
Any additional information or reminders for the week.
