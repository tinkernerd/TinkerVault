---
title: Working with Functions, Data Types, and Operators
author: Carey/Vodnik
source: JavaScript for Web Warriors 7th Edition
dateCreated: 2024-09-11
tags:
  - JavaScript
  - functions
  - data
  - types
  - operators
  - isys115
topic:
  - programming
  - isys115
type: Class Note
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

# Chapter 2 Quiz
## Which of the following describes JavaScript?   
1. Untyped
2. Statically Typed
3. Strongly Types
4. **Loosely Typed**
Your answer is correct. Programming languages that require you to declare the data types of variables are called strongly typed programming languages. A strongly typed language is also known as statically typed, because data types do not change after they have been declared. Programming languages that do not require you to declare the data types of variables are called loosely typed or duck typed programming languages.

## To run the `showReport()` function when an input button is clicked, what attribute do you add to the HTML tag?

1. **`onclick = "showReport()"`** 
2. `click = "showReport()"`
3. `addEvent = showReport `
4. `onclick = "showReport"`
The simplest way to associate a function with an event is to create an event handler as an attribute of the element within the HTML file. The general syntax is
`<_elem_ one_vent_ = "_function_()">`
where _elem_ is the HTML element in which the event occurs, _event_ is the name of a user- or browser-initiated event, and _function_() is the function that is called in response to the event.

## Which of the following is a primitive data type in JavaScript?   

1. Floating Point
2. **Boolean**
3. Integer
4. Logical
Data types that can be assigned only a single value are called primitive types. JavaScript supports five primitive data types: number, Boolean, string, undefined, and null.

## Function statements are always enclosed within opening and closing curly braces in a structure known as a________.  

1. Parameter List
2. Conditional Operator
3. **Command Block**
4. Return Statement
Function statements are always enclosed within opening and closing curly braces, a structure known as a command block that is used in many JavaScript statements to encapsulate multiple JavaScript statements.

## Write the code for a function named `calcRatio()` that has three parameters named x, y, and z and returns the sum of x and y with that sum divided by z.

**Answer**:
```javascript
function calcRatio(x, y, z) {  
   return (x + y)/z;  
}

**Feedback**: Use the return statement within the function to return the function’s value when called.
```

## Which of the following is an integer?   

1. **-11**
2. -2.5
3. 6.02e23
4. 0.03
Your answer is correct. An integer is a positive or negative number with no decimal places


## Write the code for a function named `mod10` that has a single parameter named x and returns remainder of x divided by 10.  

### Answer:
```javascript
function mod10(x) {  
   return x%10;  
}

**Feedback:** Use the % or modulus operator to calculate the remainder of dividing one value from another.
```

## One advantage of event listeners over event handlers is that________.  

1. **more than one function can be attached to the event**  
2. event listeners work with local and global variables  
3. event listeners work with mobile devices  
4. you can pass parameter values to event listeners  
Your answer is correct. Event handlers in JavaScript can only be attached to one function at a time


## Functions which are not named are called________.  

1. Local Functions
2. Empty Functions
3. Closed Functions
4. **Anonymous Functions**
Your answer is correct. If a function does not need to be called, it can be entered as an anonymous function without a name.

## Variables declared with the let keyword________.  

1. Act the same as variable declared with the var keyboard
2. **Have Block Scope**
3. Have Function Scope
4. Have values which cannot be changed once declared
Variables declared with let are block scoped in that their scope is limited to the command block in which they are defined, or any code nested within that block.

## If x = 10, the value of y in the following expression, `let y = x--;` is________.

1. Undefined
2. 9
3. 11
4. **10**
This expression first assigns x to the value y but then reduces x by one, so y has the initial value of x or 10.

## To return a value from a function, the last function statement must________.  

1. **contain the return keyword**  
2. contain the let keyword  
3. contain the Return keyword  
4. contain the document.write() method  
To create a function that returns a value, add a return statement to the end of the function’s command block.
## Which of the following is a Boolean value? 

1. 6.02e23
2. **true**
3. "Greece"
4. 3.04
## Which of the following creates an empty string?  

1. null
2. **" "**
3. 0
4. undefined
Empty strings are text strings devoid of characters
## Which of the following is a valid JavaScript statement?  

1. **`document.write("Boston, MA is called 'Beantown.' ")`**
2. document.write('Boston, MA is called 'Beantown.'')   
3. document.write("Boston, MA is called 'Beantown."')  
4. document.write("Boston, MA is called "Beantown."")  
