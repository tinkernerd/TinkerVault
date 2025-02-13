---
title: Python Functions
description: A quick reference guide covering Python's advanced functions and handy tricks, including map, filter, sorted, zip, and more.
tags:
  - Python
  - Cheat
  - Sheet
  - Programming
  - Functions
  - Python
  - Tricks
topic:
  - Python
category: Info Tech
type: Resource
created_at: 2025-02-06T14:03:16-05:00
modified_at: 2025-02-06T19:18:43-05:00
---

# Functions in Python

## Overview
1. A function is a group of statements within a program that performs a specific task.
2. Functions allow you to reuse code and organize it into logical fragments.
3. Two types of functions:
   - **Built-in Functions**: Available in Python without importing.
   - **User-defined Functions**: Written by the user to perform specific tasks.

---

## Built-in Functions
4. **Common Examples**:
   - `input([prompt])`: Takes input from the user.
   - `print()`: Displays output.
   - `len()`: Returns the length of an object.
   - `type()`: Returns the type of an object.

Example:

```python
print("Hello, Python!")
```

---

## User-defined Functions
5. Functions written by the user.
6. Steps to define a function:
   - Use the `def` keyword followed by the function name.
   - Add parameters within parentheses (optional).
   - End the definition with a colon.
   - Write the logic for the function.
   - Use the `return` keyword to return output (optional).

### Syntax:

```python
def function_name(parameter_one, parameter_two):
    # Logic here
    return result
```

### Example:

```python
def add_numbers(a, b):
    return a + b

result = add_numbers(5, 10)
print(result)  # Output: 15
```

---

## Global and Local Variables
7. **Local Variables**:
   - Defined inside a function.
   - Have a local scope (accessible only within the function).
8. **Global Variables**:
   - Defined outside any function.
   - Have global scope (accessible both inside and outside functions).

Example:

```python
X = 20  # Global variable

def my_function():
    X = 10  # Local variable
    print("Local X:", X)

my_function()
print("Global X:", X)
```

---

## Function Return
9. Use `return` to send a value back to the caller.
10. If `return` is not used, the function returns `None`.

Example:

```python
def square(number):
    return number * number

print(square(4))  # Output: 16
```

---

## Function Arguments
### Required Arguments
11. Must be present when calling a function.
12. Arguments must be in the correct order.

Example:

```python
def divide(a, b):
    return a / b

print(divide(10, 2))  # Output: 5.0
```

---

### Keyword Arguments
13. Identified by parameter names, allowing arguments to be passed in any order.

Example:

```python
def greet(name, greeting):
    return f"{greeting}, {name}!"

print(greet(name="Alice", greeting="Hello"))  # Output: Hello, Alice!
```

---

### Default Arguments
14. Default values are used if no argument is provided during the call.

Example:

```python
def greet(name="Stranger"):
    return f"Hello, {name}!"

print(greet())            # Output: Hello, Stranger!
print(greet("Alice"))     # Output: Hello, Alice!
```

---

### Variable-length Arguments
15. Use `*args` to pass a variable number of arguments.
16. Use `**kwargs` to pass a variable number of keyword arguments.

#### Example with `*args`:

```python
def add(*numbers):
    total = sum(numbers)
    return total

print(add(1, 2, 3, 4))  # Output: 10
```

#### Example with `**kwargs`:

```python
def display_info(**info):
    for key, value in info.items():
        print(f"{key}: {value}")

display_info(name="Alice", age=25, city="New York")
```

---

## Anonymous Functions (Lambda)
17. Lambda functions are small, anonymous functions defined with the `lambda` keyword.
18. Syntax: `lambda arguments: expression`.

Example:

```python
square = lambda x: x * x
print(square(5))  # Output: 25
```

---

## Function Summary
19. Functions help break programs into reusable pieces of code.
20. They improve readability and modularity.
21. Built-in functions provide pre-defined utilities, while user-defined functions allow customization.
