---
title: Python Cheat Sheet - Keywords
author: Finxter
source: https://finxter.com/
description: A reference guide for Python keywords, including examples of how to use them in code. Covers keywords such as True, False, and, or, not, class, def, and more.
date: 2024-09-15
tags:
  - Python
  - Keywords
  - Cheat Sheet
  - Programming
  - Boolean Operators
license: CC BY-NC-SA 4.0
version: 1.0
categories:
  - Programming Languages
  - Python
related_topics:
  - Python Syntax
  - Control Flow
  - Conditional Statements
  - Object-Oriented Programming
audience: 
  - Python Learners
  - Developers
  - Programmers
keywords: 
  - Python Keywords
  - Python Cheat Sheet
  - Boolean Logic
  - Control Flow
---
# Python Cheat Sheet: Keywords

**“A puzzle a day to learn, code, and play”** → Visit [finxter.com](https://finxter.com/)

---

## Boolean Values

#### `False`, `True`
These are the two data values from the Boolean data type.

```python
False == (1 > 2)  # True
True == (2 > 1)   # True
```

---

## Logical Operators

#### `and`, `or`, `not`
Logical operators for combining Boolean values:

- **`and`**: Both `x` and `y` must be `True`.
- **`or`**: Either `x` or `y` must be `True`.
- **`not`**: `x` must be `False`.

```python
x, y = True, False
(x or y) == True    # True
(x and y) == False  # True
(not y) == True     # True
```

---

## Control Flow

#### `break`
Ends a loop prematurely.

```python
while(True):
    break  # No infinite loop
print("hello world")
```

#### `continue`
Skips the rest of the current loop iteration and proceeds to the next.

```python
while(True):
    continue
    print("43")  # This line is dead code
```

#### `if`, `elif`, `else`
Conditional program execution. Executes the first block that evaluates to `True`.

```python
x = int(input("your value: "))
if x > 3:
    print("Big")
elif x == 3:
    print("Medium")
else:
    print("Small")
```

---

## Class and Functions

#### `class`
Defines a new class, representing a real-world concept (object-oriented programming).

```python
class Beer:
    def __init__(self):
        self.content = 1.0

    def drink(self):
        self.content = 0.0

becks = Beer()  # Constructor - create class
becks.drink()   # Now, becks.content == 0
```

#### `def`
Defines a new function or class method. In methods, the first parameter (`self`) refers to the class instance.

```python
def incrementor(x):
    return x + 1

print(incrementor(4))  # Output: 5
```

---

## Looping Structures

#### `for`, `while`
Looping constructs for iterating over elements or executing repeated blocks of code.

```python
# For loop
for i in [0, 1, 2]:
    print(i)

# While loop
j = 0
while j < 3:
    print(j)
    j += 1
```

---

## Special Operators

#### `in`
Checks whether an element is present in a sequence.

```python
42 in [2, 39, 42]  # True
```

#### `is`
Checks whether both elements point to the same object.

```python
x = y = 3
x is y  # True

[3] is [3]  # False (different objects)
```

#### `None`
Represents an empty value (the absence of a value).

```python
def f():
    x = 2

f() is None  # True
```

#### `lambda`
Defines an anonymous function (a function without a name).

```python
(lambda x: x + 3)(3)  # Returns 6
```

#### `return`
Terminates a function and optionally passes back a result.

```python
def incrementor(x):
    return x + 1

incrementor(4)  # Returns 5
```

---
