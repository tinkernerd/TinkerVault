---
title: "DOM Manipulation"
author: "Nicholas Stull"
description: "Introduction to DOM manipulation using JavaScript to modify HTML elements dynamically."
date: 2024-09-15
tags:
  - tech
  - javascript
topic:
- Tech
- Javascript
---

# DOM Manipulation

The **DOM** (Document Object Model) is how you can interact with and manipulate web pages using JavaScript.

## Topics Covered

- **Selecting Elements**:
  ```javascript
  const element = document.getElementById('myElement');
  ```
  or
  ```javascript
  const element = document.querySelector('.myClass');
  ```
- **Changing Content**:
  ```javascript
  element.textContent = 'New Content';
  ```

- **Modifying Styles**:
  ```javascript
  element.style.color = 'blue';
  ```
