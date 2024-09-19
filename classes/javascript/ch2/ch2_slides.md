---
title: "Working with Functions, Data Types, and Operators"
author: "Carey/Vodnik"
source: "JavaScript for Web Warriors 7th Edition"
date: "09-11-2024"
tags: ["JavaScript", "functions", "data types", "operators"]
topic:
  - programming
  - isys115

---

# Chapter 2: Working with Functions, Data Types, and Operators

### Objectives
1. Write and call functions to perform actions and calculate values.
2. Associate functions with events using event handlers and event listeners.
3. Use built-in JavaScript functions.
4. Understand the scope of variables and functions.
5. Work with data types and write expressions with numeric values, text strings, and Boolean values.
6. Create expressions using arithmetic, assignment, comparison, logical, string, and special operators.
7. Understand order precedence and associativity of operations.
8. Work with events and values associated with form controls.
9. Access the browser’s debugging console.

---

## Working with Functions

- **Function:** A collection of statements that perform an action or calculate a value.
- Syntax for a named function:
    ```javascript
    function functionName(parameters) {
      statements;
    }
    ```
- Functions can return values using the `return` statement.

### Event Handlers and Listeners
- **Event Handlers** associate JavaScript functions with events using inline attributes:
    ```html
    <elem onevent="function()">
    ```
- **Event Listeners** can be attached to multiple events and are added using:
    ```javascript
    object.addEventListener("event", function, capture);
    ```

---

## Understanding Variable Scope

- **Scope:** Where a variable or function can be accessed within a program.
- **Block scope** (`let`): The variable is recognized only within the block.
- **Function scope** (`var`): The variable is recognized only within the function.
- **Global scope:** Variables declared outside of functions are available throughout the program.

---

## Data Types

### Primitive Data Types:
- **Number:** Positive or negative number with or without decimals.
- **Boolean:** Logical `true` or `false`.
- **String:** A sequence of text characters.
- **Null:** Represents an empty or nonexistent value.
- **Undefined:** An unassigned or undeclared variable.

---

## Using Operators

### Arithmetic Operators:
- Addition (`+`), subtraction (`-`), multiplication (`*`), division (`/`), modulus (`%`), and exponentiation (`**`).

### Assignment Operators:
- Simple assignment: `=`.
- Compound assignments: `+=`, `-=`, `*=`, `/=`, `%=`, `**=`.

### Comparison Operators:
- `==`, `===`, `!=`, `!==`, `>`, `<`, `>=`, `<=`.

### Logical Operators:
- `&&` (and), `||` (or), `!` (not).

---

## Working with Web Form Controls
- Access input values and form elements using `getElementById()` and interact with form events such as `onchange` and `onclick`.

---

## Debugging with the Browser Console
- Use the browser’s console to track and fix errors in JavaScript code. The console provides detailed error messages including the location of the error.

---

## Self-Assessment

- Reflect on how functions and variable scope can help organize your code.
- Consider the role of operators in constructing logical expressions and controlling program flow.

---

