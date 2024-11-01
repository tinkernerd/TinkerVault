---
title: Introduction to JavaScript
author: Carey/Vodnik
source: JavaScript for Web Warriors 7th Edition
dateCreated: 2024-09-04
topic:
  - isys115
  - JavaScript
type: Resource
category: Programming
---

# Chapter 1: Introduction to JavaScript

### Objectives
1. Explain the history of JavaScript and scripting languages.
2. Write content into a web page using JavaScript.
3. Add JavaScript code to a web page.
4. Create and apply JavaScript variables.
5. Work with event handlers within a web page.
6. Connect to an external JavaScript file.

---

## Exploring the JavaScript Language

- **JavaScript:** A programming language that adds interactive features to a website.
- Developed for validating customer data in online commerce.
- **Scripting language:** Subcategory of programming languages that run directly in a program without needing to be compiled.

### JavaScript and ECMAScript
- ECMAScript is a standardized scripting language by ECMA.
- JavaScript's core (ECMAScript), DOM, and BOM make up the full implementation.
  
---

## Client/Server Architecture

- **Client (front end):** Device that interacts with the user and communicates with the server.
- **Server (back end):** Handles data storage and heavy processing.
- Client-side scripting (JavaScript) enhances user interaction by running locally on the browser.

---

## Writing a JavaScript Program

### The Script Element
- Embed JavaScript within the HTML using the `<script>` tag.
    ```html
    <script>
      document.write("<p>Example</p>");
    </script>
    ```
- **JavaScript Objects:** Methods and properties that are part of objects, such as the Document object.

---

## Using Variables

- Variables store data values and are declared using `let`, `var`, or `const`.
    ```javascript
    let salesTotal = 47.58;
    const taxRate = 0.08;
    ```

### Writing Expressions with Variables
- Combine variables and literals in expressions to generate output.
    ```javascript
    let totalCost = salesTotal + 10;
    document.write("<p>Total cost is $" + totalCost + "</p>");
    ```

---

## Event Handling

### Example of Event Handlers:
- **Click Event**:
    ```html
    <input type="button" onclick="window.alert('Hello!')" />
    ```

- **Referencing Elements by ID**:
    ```javascript
    let fName = document.getElementById("firstName");
    ```

---

## Self-Assessment

- Reflect on how JavaScript and its features, like client-side scripting, can improve user interactions.
- Consider the IDEs and code editors you have used and how they impact your workflow.
# Quiz Awnsers


## Which method displays a dialog box with an OK button?

1. **a.** `document.writeln()`  
2. **b.** `window.popup()`  
3. **c.** **`window.alert()`**  
4. **d.** `document.write()`

**Feedback:**  
Your answer is correct. The `window.alert()` method displays a dialog box with an OK button.

---

## The syntax specifications for JavaScript are defined in:

1. **a.** the Document Object Model  
2. **b.** **ECMAScript**  
3. **c.** HTML  
4. **d.** the Browser Object Model

**Feedback:**  
Your answer is correct. JavaScript is based on the standards of ECMAScript, which is developed to meet modern needs.

---

## Which of the following is not a language used by web developers?

1. **a.** HTML  
2. **b.** **Machine Code**  
3. **c.** CSS  
4. **d.** JavaScript

**Feedback:**  
Your answer is correct. Machine code is used by computers and not considered a language used by web developers.

---

## Which of the following is not a JavaScript keyword used to declare a variable?

1. **a.** `variable`  
2. **b.** `const`  
3. **c.** `var`  
4. **d.** **`let`**

**Feedback:**  
Your answer is correct. Variables are declared using `var`, `let`, or `const`. The term `variable` is not a JavaScript keyword.

---

## What is usually the primary role of a client?

1. **a.** data storage  
2. **b.** locating records that match a request  
3. **c.** **the presentation of an interface to the user**  
4. **d.** heavy processing, such as calculations

**Feedback:**  
Your answer is correct. The client presents the interface to the user and interacts with the server to gather and present data.

---

## Which of the following uses the correct case?

1. **a.** `Document.Write()`  
2. **b.** `document.Write()`  
3. **c.** **`document.write()`**  
4. **d.** `Document.write()`

**Feedback:**  
Your answer is correct. JavaScript methods and objects are case-sensitive and are written in lowercase.

---

## Code that tells a browser what to do in response to a specific event on a specific element is called a(n) __________.

1. **a.** **event handler**  
2. **b.** response  
3. **c.** procedure  
4. **d.** method

**Feedback:**  
Your answer is correct. The code that handles a specific event is known as the event handler.

---

## JavaScript is built upon:

1. **a.** **ECMAScript, the Document Object Model, and the Browser Object Model**  
2. **b.** ECMAScript  
3. **c.** the Document Object Model  
4. **d.** the Browser Object Model

**Feedback:**  
Your answer is incorrect. JavaScript is built on three foundations: ECMAScript, the DOM, and the BOM.

---

## Which of the following is not a valid identifier?

1. **a.** `interestRate`  
2. **b.** **`2QInterestRate`**  
3. **c.** `_interestRate`  
4. **d.** `$InterestRate`

**Feedback:**  
Your answer is incorrect. An identifier cannot start with a number.

---

## Provide the JavaScript code to write the text “Copyright 2023” as a line comment. Provide the code to write the same text as a block comment.

**Answer:**  
```javascript
// Copyright 2023
/*  
   Copyright 2023  
*/
