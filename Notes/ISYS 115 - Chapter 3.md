---
title: Building Arrays and Controlling Flow
author: Carey/Vodnik
source: JavaScript for Web Warriors 7th Edition
dateCreated: 2024-09-18
topic:
  - isys115
  - Javascript
type: Resource
category: Programming
---

# Chapter 3: Building Arrays and Controlling Flow

### Objectives
1. Create an array containing a list of data values.
2. Access a collection of HTML elements by type.
3. View arrays and HTML collections using the browser console.
4. Create program loops using `while`, `do...while`, and `for` loops.
5. Explore array methods to replace program loops.
6. Make decisions with `if` statements and `switch` statements.
7. Manage program loops and conditional statements with the `break`, `continue`, and `label` commands.

---

## Storing Data in Arrays

### Declaring and Initializing Arrays
- **Array:** A set of data represented by a single variable name.
- Syntax for creating an array:
    ```javascript
    let array = [values];
    let array = new Array(values);
    let array = new Array(length);
    ```
  
### Elements and Indexes
- **Element:** A value stored in an array.
- **Index:** Position of an element within an array (indexes begin with 0).
- JavaScript arrays are dynamic and can automatically expand.

---

## Exploring HTML Collections
- HTML elements are organized into collections, each representing an HTML Collection Object, such as:
  - `<embed>`, `<form>`, `getElementsByClassName`, etc.

Syntax to reference an element in a collection:
```javascript
objects[idref] or objects.idref
```

---

## Working with Program Loops

### The While Loop
- Command block executes repeatedly while a condition is true.
  ```javascript
  while (condition) {
    statements;
  }
  ```

### The Do While Loop
- Executes at least once before checking the condition.
  ```javascript
  do {
    statements;
  } while (condition);
  ```

### The For Loop
- Syntax:
  ```javascript
  for (initial; condition; iteration) {
    statements;
  }
  ```

---

## Adding Decision Making to Your Code

### The If Statement
- Runs a set of statements only if a condition is true:
  ```javascript
  if (condition) {
    statements;
  }
  ```

### The Switch Statement
- Syntax:
  ```javascript
  switch (expression) {
    case label1:
      statements;
      break;
    case label2:
      statements;
      break;
    default:
      statements;
      break;
  }
  ```

---

## Managing Program Loops and Conditional Statements

### The `break` and `continue` Statements
- **break:** Exits a loop early when the goal is achieved.
- **continue:** Skips the current iteration and continues the loop.

---

## Self-Assessment

- How or when will you use JavaScript arrays to store data?
- How can you apply Chapter 3’s techniques to manipulate HTML elements?
- Which program control structures were most familiar, and which will you rely on?

# Quiz Awnsers
