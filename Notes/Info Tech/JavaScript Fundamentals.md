---
title: JavaScript Fundamentals
type: Resource
topic:
  - JavaScript
category: Info Tech
created_at: 2025-02-05T14:52:37-05:00
modified_at: 2025-02-05T14:52:37-05:00
---

# JavaScript Fundamentals  
## Overview of JavaScript
- **JavaScript**: Adds interactivity to websites, allowing for dynamic user experiences.
- Initially created for data validation in online commerce.
- **Scripting Language**: Runs directly in the browser, avoiding the need for compilation.

## ECMAScript
- **ECMAScript**: The standardized version of JavaScript, developed by ECMA.
- JavaScript includes ECMAScript, as well as the Document Object Model (DOM) and Browser Object Model (BOM).

## Client/Server Architecture
- **Client (Front End)**: The device or browser interacting with the user and server.
- **Server (Back End)**: Manages data storage and processing.
- **Client-Side Scripting (JavaScript)**: Enhances user interactions by running scripts directly in the browser.

## Embedding JavaScript in HTML
- Use the `<script>` tag to add JavaScript code within HTML:
    ```html
    <script>
      document.write("<p>Example</p>");
    </script>
    ```
- JavaScript includes built-in objects like `Document`, containing properties and methods for working with web content.

## Variables and Expressions
- **Variables**: Store data and are declared using `let`, `var`, or `const`.
    ```javascript
    let salesTotal = 47.58;
    const taxRate = 0.08;
    ```
- **Expressions**: Combine variables and literals to produce a result.
    ```javascript
    let totalCost = salesTotal + 10;
    document.write("<p>Total cost is $" + totalCost + "</p>");
    ```

## Event Handling
- **Event Handlers**: Respond to user actions, like clicks:
    ```html
    <input type="button" onclick="window.alert('Hello!')" />
    ```
- **Accessing Elements by ID**:
    ```javascript
    let fName = document.getElementById("firstName");
    ```

## Functions
- **Definition**: Functions are sets of statements that perform tasks or calculate values.
    ```javascript
    function functionName(parameters) {
      // statements
    }
    ```

## Scope of Variables
- **Scope**: Defines where a variable or function is accessible.
  - **Block Scope** (`let`)
  - **Function Scope** (`var`)
  - **Global Scope** (available throughout the entire program)

## Data Types
- **Primitive Types**:
  - **Number**: Numeric values.
  - **Boolean**: `true` or `false`.
  - **String**: Text values.
  - **Null**: Represents an empty or nonexistent value.
  - **Undefined**: An unassigned or undeclared variable.

## Operators
- **Arithmetic Operators**: `+`, `-`, `*`, `/`, `%`, `**`
- **Assignment Operators**: `=`, `+=`, `-=`, etc.
- **Comparison Operators**: `==`, `!=`, `>`, `<`, etc.
- **Logical Operators**: `&&`, `||`, `!`


## Arrays
- **Arrays**: Store sets of data under a single variable name.
    ```javascript
    let items = ["apple", "banana", "cherry"];
    ```
- **Elements and Indexes**:
  - **Element**: A value stored in an array.
  - **Index**: The position of an element within an array (starting from 0).

## Program Loops
- **While Loop**: Repeats as long as a condition is true.
    ```javascript
    while (condition) {
      // statements
    }
    ```
- **Do-While Loop**: Executes at least once, then checks the condition.
    ```javascript
    do {
      // statements
    } while (condition);
    ```
- **For Loop**: Repeats a specific number of times.
    ```javascript
    for (initial; condition; increment) {
      // statements
    }
    ```

## Conditional Statements
- **If Statement**: Runs a set of statements only if a condition is true.
    ```javascript
    if (condition) {
      // statements
    }
    ```
- **Switch Statement**: A conditional with multiple cases.
    ```javascript
    switch (expression) {
      case label1:
        // statements
        break;
      default:
        // statements
    }
    ```

## Managing Loops with `break` and `continue`
- **break**: Exits a loop early.
- **continue**: Skips the current iteration, continuing the loop.

## Web Form Controls
- Access input values and listen to form events using `getElementById()` and event listeners.

## Debugging
- Use the browser’s console to inspect and debug JavaScript code.


## Fetching Data with APIs
- JavaScript can interact with external APIs to fetch data, typically using `fetch()`:
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

## Selecting and Modifying DOM Elements
- **Selecting Elements**:
    ```javascript
    const element = document.getElementById('myElement');
    ```
- **Changing Content**:
    ```javascript
    element.textContent = 'New Content';
    ```
- **Modifying Styles**:
    ```javascript
    element.style.color = 'blue';
    ```

---

This unified JavaScript note covers essential concepts, organized to build a strong foundation and provide quick reference for each area of JavaScript fundamentals.