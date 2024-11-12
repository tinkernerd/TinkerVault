---
cssclasses:
  - dashboard
banner: "https://raw.githubusercontent.com/tinkernerd/walls/refs/heads/main/evangelion/a_drawing_of_a_machine.jpg"
banner_x: 0.5
banner_y: 0
---
<div class="title" style="color:Sienna">HOME</div>

# Notes!
- Aviation
	- [[Aviation]]
	- [[Aviation Weather]]
- Administrative
	-  [[Documentation]]
	- [[Email Templates]]
- Educational
	- [[The Bible]]
	- [[Photography]]
- Class Notes
`$=dv.list(dv.pages().where(p => p.category == "School").sort(f => f.file.name, "asc").file.link)`
# Technical Notes
- 📂 Tech Notes
`$=dv.list(dv.pages().where(p => p.category == "Technology" && p.type == "Dashboard").sort(f => f.file.name, "asc").file.link)`
- Programming
`$=dv.list(dv.pages().where(p => p.category == "Programming" && p.type == "Dashboard").sort(f => f.file.name, "asc").file.link)`
 - Windows
`$=dv.list(dv.pages().where(p => p.topic && p.topic.includes("Windows") && p.type !== "Dashboard").sort(f => f.file.name, "asc").file.link)`
- Raspberry PI
 `$=dv.list(dv.pages().where(p => p.category == "RaspberryPi").sort(f => f.file.name, "asc").file.link)`
- Security
`$=dv.list(dv.pages().where(p => p.topic == "Security").sort(f => f.file.name, "asc").file.link)`
- Radio Notes
`$=dv.list(dv.pages().where(p => p.category == "Radio" && p.type == "Dashboard").sort(f => f.file.name, "asc").file.link)`
# Recipes
- Food
`$=dv.list(dv.pages('#food').where(p => p.file.path.startsWith("Notes/")&& p.type == "Recipe").sort(f => f.file.name, "desc").limit(4).file.link)`
- Alcoholic Drinks
`$=dv.list(dv.pages('#drinks/alcohol').where(p => p.file.path.startsWith("Notes/")&& p.type == "Recipe").sort(f => f.file.name, "desc").file.link)`
- Regular Drinks
`$=dv.list(dv.pages('#drinks/clean').where(p => p.file.path.startsWith("Notes/")&& p.type == "Recipe").sort(f => f.file.name, "desc").limit(4).file.link)`

