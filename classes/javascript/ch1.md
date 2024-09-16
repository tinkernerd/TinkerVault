---
title: ISYS 115 - Chapter 1
tags:
  - javascript
  - programming
  - coding
topic:
  - programming
  - isys115
type: ClassNote
---
# Week 1 | Chapter 1
## Programming, Scripting, and Markup Languages

- **Programming Language**: Requires compilation to transform code into machine-readable format.
- **Scripting Language**: Does not require compilation. It is interpreted line-by-line by an interpreter, which checks for errors during runtime.
- **Markup Language**: Defines the content, structure, and appearance of a document.

## JavaScript Overview

- **JavaScript**: A scripting language based on the **ECMAScript** standard. It’s continually updated to meet the needs of modern browsers and devices.
- JavaScript is built on three main components:
1. **ECMAScript**: The core scripting language.
2. . **Document Object Model (DOM)**: Describes how to access and manipulate the content and structure of a web page.
3. **Browser Object Model (BOM)**: Describes how to access the features and behaviors of the browser.

## JavaScript Foundations

- **DOM Specifications**: Maintained by the **World Wide Web Consortium (W3C)**, which also oversees standards for HTML and CSS.
- **BOM Specifications**: Determined by individual browsers, but a common set of standards has been adopted to ensure cross-browser compatibility.
## JavaScript and Client/Server Architecture

- **Two-tier System**: A client/server architecture where the server (often a database) responds to client requests. The web is built on this model, where a web browser (client) requests documents from a web server.
- **Three-tier System**: Involves three components:
1. **Client Tier**: User interface.
2. **Processing Tier**: Logic processing.
3. **Data Storage Tier**: Database or data storage.

- **JavaScript**: A **client-side scripting language**, meaning it runs in the browser (client tier). It allows developers to create interactive web pages.
- **Server-side Scripting**: Refers to code executed on the server (processing tier).
## Best Practices for Client and Server Processing

- **Client-side tasks**: Handle user interface and light tasks, like data validation.
- **Server-side tasks**: Handle more complex processes, such as calculations and data storage.

## Working with JavaScript in HTML

- The `<script>` element tells the browser to run JavaScript code.
- JavaScript code can be placed directly in an HTML document or stored in an external file (JavaScript source file).
- The loading of JavaScript can be delayed by adding the `defer` or `async` attributes to the `<script>` tag (for external files).
## JavaScript Programming Basics

- **Object**: A unit of code and data. Each object can have:
  - **Properties**: Data associated with the object (e.g., color, name).
  - **Methods**: Actions the object can perform (e.g., `write()` for the Document object).
  
- **Case Sensitivity**: JavaScript distinguishes between uppercase and lowercase letters, meaning `var` and `Var` are different.
  
- **Comments**: Non-executable lines that can provide information such as program details or notes to future developers.
## Variables, Reserved Words, and Expressions

- **Variables**: Containers for storing values in memory.
- **Reserved Words (Keywords)**: Special words that are part of JavaScript's syntax and cannot be used as variable names.
- **Expressions**: Combinations of literals, variables, operators, and functions that JavaScript evaluates to produce a result.
## Events and Event Handlers

- **Events**: Specific occurrences that JavaScript can monitor (e.g., user actions or browser activities).
- **Event Handler**: Code executed in response to an event.
