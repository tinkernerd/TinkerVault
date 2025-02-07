---
title: Security
type: Dashboard
topic:
  - Security
category: Info Tech
created_at: 2025-02-06T13:53:58-05:00
modified_at: 2025-02-06T13:58:18-05:00
---
# 🔐 Welcome to Security Shenanigans! 🔐
___

Alright, boys, you’ve landed in the **Security Shenanigans** section—where firewalls are strong, passwords are long, and if you ain't patchin', you're matchin' (to a breach, that is). Whether you’re fortifyin’ your network, trackin’ vulnerabilities, or just here to remind yourself **not to click shady links**, this is the spot.

## 🔐 Lock It Down: Your Security Notes
```dataview
TABLE WITHOUT ID
link(file.path, title) AS "Note", type AS "Type", created_at AS "Date Created", file.mtime AS "Last Modified", status AS "Status"
WHERE contains(topic, "Security") OR contains(topic, "CyberSecurity") AND type != "Dashboard"
SORT title ASC
```

---

## Tasks

- [ ]  🔑 2025-02-04 📅 2025-02-09 ⏫ ➕ 2025-02-04 Organize security topics, ya big shoot.


---

## 🛠 Handy Dandy Security Resources

- [🛡 OWASP Top Ten](https://owasp.org/www-project-top-ten/) - ‘Cause security vulnerabilities ain’t a game, bud.
- [🔓 Have I Been Pwned](https://haveibeenpwned.com/) - Find out if yer credentials are looser than a goose.
- [🔍 NIST Cybersecurity Framework](https://www.nist.gov/cyberframework) - The big leagues of security standards, buddy.
- [🐧 Linux Hardening Guide](https://github.com/trimstray/the-practical-linux-hardening-guide) - Keep yer penguin locked down tighter than a bank vault.
- [🔥 Firewalls 101](https://docs.netgate.com/pfsense/en/latest/) - A lesson in "No, you can’t just turn it off."

---

Stay frosty, keep yer logs tight, and for the love of all things encrypted, **use MFA**.
