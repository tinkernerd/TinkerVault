---
title: ISYS 115 - Chapter 2
tags:
  - javascript
  - programming
  - coding
topic:
  - programming
  - isys115
type: ClassNote
---
# Week 2 | Chapter 2

# JavaScript Functions and Operators

## Functions

- A **function** is a related group of JavaScript statements that are executed as a single unit.
- To execute a function, you must **invoke**, or call, it from elsewhere in your program.

## Variables and Scope

- The **scope** of a variable determines where it can be referenced:
  - Variables declared with the `let` keyword are **block scoped** and can only be referenced within their block.
  - Variables declared with the `var` keyword are **function scoped** and can only be referenced within their function.
- A **global variable** can be referenced anywhere within the program, whereas a **local variable** can only be referenced within its command block or function.

## Data Types

- A **data type** (such as number, Boolean, or string) is the specific category of information that a variable contains.
- JavaScript is a **loosely typed** programming language, meaning it does not require you to declare the data types of variables.
- The **numeric** data type in JavaScript supports:
  - **Integers**: Positive or negative numbers with no decimal places.
  - **Floating-point numbers**: Numbers that contain decimal places or are written in exponential notation.
- A **Boolean** value is a logical value of `true` or `false`.

## Escape Characters

- The JavaScript **escape character** (`\`) tells compilers and interpreters that the character that follows it has a special purpose, such as escaping a quotation mark or a newline.

## Operators

### Arithmetic Operators

- **Arithmetic operators** (such as `+`, `-`, `*`, and `/`) are used to perform mathematical calculations, such as addition, subtraction, multiplication, and division.

### Assignment Operators

- **Assignment operators** (such as `=` or `+=`) are used for assigning a value to a variable.

### Comparison Operators

- **Comparison operators** (such as `===` or `>`) are used to compare two operands and determine if one value is greater than, less than, or equal to another.

### Conditional Operator

- The **conditional operator** (`?:`) executes one of two expressions, based on the result of a conditional expression.

### Logical Operators

- **Logical operators** (`&&`, `||`, and `!`) combine multiple Boolean expressions, resulting in a single Boolean value.

### Operator Precedence

- **Operator precedence** is the order in which operations in an expression are evaluated.

## Unary and Binary Operators

- A **binary operator** (such as `+`) requires operands before and after the operator (e.g., `a + b`).
- A **unary operator** (such as `++`) requires a single operand either before or after the operator (e.g., `i++`).