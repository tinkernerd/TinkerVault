---
title: Aviation Adventures
tags:
  - aviation
  - dash/personal
banner: "https://calaero.edu/wp-content/uploads/2018/07/Small-Plane-Take-Off.jpg"
banner_x: 0.5
cssclasses:
  - dashboard
banner_y: 0.54
category: Aviation
type: Dashboard
---
<div class="title" style="color:Sienna">Aviation</div>
# ✈️ Welcome to Aviation Adventures! ✈️
___

Welcome, future aviators, to the **Aviation Adventures** section! Whether you're gunning for that coveted Private Pilot's License (PPL) or just want to geek out over sectional charts, weather reports, or airport codes, you're in the right place. Buckle up, set your altimeter, and prepare for takeoff!

```plaintext
__|__
\___/
 | |
 | |
_|_|______________
        /|\ 
      */ | \*
      / -+- \
  ---o--(_)--o---
    /  0 " 0  \
  */     |     \*
  /      |      \
*/       |       \*
```

## ✈️ Explore Your Aviation Notes:
### All Notes
```dataview  
TABLE WITHOUT ID
link(file.path, title) AS "Note", type AS "Type", dateCreated AS "Date Created", file.mtime AS "Last Modified", status AS "Status"
FROM "Notes"
WHERE contains(category, "Aviation") AND type != "Dashboard"
SORT title ASC

```

### Private Pilot License (PPL) Notes:
1. **Info**
    - [Foxtrot Flight Training LLC](https://www.foxtrotflighttraining.com/)
2. **Recs**
    - [Private Pilot License (PPL) - Definition, Privileges, & Requirements / ATP Flight School](https://atpflightschool.com/become-a-pilot/flight-training/private-pilot-license.html)
3. **Financial**
    - [Private Student Loan Apply | Stratus Financial](https://stratus.finance/apply-pilot-student-loan/)
4. **Education** 
    - [Sporty's Online Training](https://courses.sportys.com/training/portal/course/PRIVATE/welcome)
#### Class Notes
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status, chapter as "Volume/Chapter"
FROM #classnotes AND "Notes"
WHERE contains(category, "Aviation")
SORT title ASC
```
  

---

Fly safe, and remember: the sky isn't the limit—it’s just the beginning!

