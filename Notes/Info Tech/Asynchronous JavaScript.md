---
title: Asynchronous JavaScript
author: Nicholas Stull
description: Understanding asynchronous operations in JavaScript using callbacks, promises, and async/await.
date: 2024-09-15
created_at: 2024-09-15 08:00
type: Resource
topic:
  - Javascript
  - Asynchronous
category: Info Tech
---

# Asynchronous JavaScript

JavaScript is single-threaded, meaning only one task can run at a time. Asynchronous operations allow the code to continue running while waiting for other tasks to complete.

## Topics Covered

- **Callbacks**:
  ```javascript
  function doSomething(callback) {
    // Simulate a delay
    setTimeout(() => {
      callback('Done');
    }, 1000);
  }
  ```
- **Promises**:
  ```javascript
  const myPromise = new Promise((resolve, reject) => {
    // Async work
    resolve('Success');
  });
  ```
- **`async/await`**:
  ```javascript
  async function doSomething() {
    const result = await myPromise;
    console.log(result);
  }
  ```

Understanding async operations in JavaScript helps you manage tasks like API calls or delays without blocking the rest of your code.
