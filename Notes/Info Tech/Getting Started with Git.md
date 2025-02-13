---
title: Getting Started with Git
type: Resource
topic:
  - Git
category: Info Tech
created_at: 2025-02-05T15:07:15-05:00
modified_at: 2025-02-05T15:08:05-05:00
---

# **Getting Started with Git**

Learn how to configure Git, initialize repositories, and start tracking changes.

---

## **1. Configure Git**
Set your username and email for commits:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

View your Git configuration:
```bash
git config --list
```

---

## **2. Initialize a Repository**
- Create a new Git repository:
  ```bash
  git init
  ```
- Clone an existing repository:
  ```bash
  git clone <repository_url>
  ```

---

## **3. Track Changes**
- Add files to the staging area:
  ```bash
  git add <file_name>
  ```
- Add all changes:
  ```bash
  git add .
  ```
- Commit changes:
  ```bash
  git commit -m "Your commit message"
  ```

---

🎉 *You’ve successfully set up Git! Start tracking your project history today.*
