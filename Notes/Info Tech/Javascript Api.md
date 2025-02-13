---
title: APIs in JavaScript
description: Working with APIs in JavaScript, including fetching and displaying data.
topic:
  - Javascript
  - Api
type: Resource
category: Info Tech
dateUpdated: 2025-01-31T22:04:34
created_at: 2025-01-31T22:04:34
---

# APIs in JavaScript

JavaScript can interact with APIs (Application Programming Interfaces) to fetch data from external services.

## Fetching Data
  ```javascript
  fetch('https://api.example.com/data')
    .then(response => response.json())
    .then(data => console.log(data));
  ```

## Using `async/await`
  ```javascript
  async function getData() {
    const response = await fetch('https://api.example.com/data');
    const data = await response.json();
    console.log(data);
  }
  ```


