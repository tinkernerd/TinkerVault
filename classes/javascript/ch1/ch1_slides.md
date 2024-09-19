---
title: "Introduction to JavaScript"
author: "Carey/Vodnik"
source: "JavaScript for Web Warriors 7th Edition"
date: "2022"
tags: ["JavaScript", "scripting languages", "web development"]
topic:
  - programming
  - isys115
date: "09-04-2024"
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
