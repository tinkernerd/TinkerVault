---
title: Aviation Adventures
tags:
  - aviation
---
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
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", file.mtime AS "Last modified", status as Status
FROM "Notes" AND #aviation 
WHERE contains(topic, "Aviation")
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
WHERE contains(topic, "Aviation")
SORT title ASC
```
  
### Airports:
- [Michigan Airport Example](Dowagiac%20Airport%20Information.md)
    
### Weather:
- [Understanding Aviation Weather](Aviation%20Weather.md)
- [For "Up to Date" Metar](Live%20METAR%20Data.md)
    
### Sectional Charts:
- [The Art of Sectional Charts](Sectional%20Charts.md)

### AOPA & AirVenture:
- [Aircraft Owners and Pilots Association (AOPA)](AOPA.md)
- [The Legendary AirVenture](Airventure%20Air%20Show.md)

### Pilot Speak:
- [Phonetic Alphabet](Phonetic%20Alphabet.md)



---

Fly safe, and remember: the sky isn't the limit—it’s just the beginning!

