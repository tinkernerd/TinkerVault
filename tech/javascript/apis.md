---
title: "APIs in JavaScript"
author: "Nicholas Stull"
description: "Working with APIs in JavaScript, including fetching and displaying data."
date: 2024-09-15
tags:
  - tech
  - javascript
topic:
- Tech
- Javascript
---

# APIs in JavaScript

JavaScript can interact with APIs (Application Programming Interfaces) to fetch data from external services.

## Topics Covered

- **Fetching Data**:
  ```javascript
  fetch('https://api.example.com/data')
    .then(response => response.json())
    .then(data => console.log(data));
  ```

- **Using `async/await`**:
  ```javascript
  async function getData() {
    const response = await fetch('https://api.example.com/data');
    const data = await response.json();
    console.log(data);
  }
  ```

