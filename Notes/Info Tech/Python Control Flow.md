---
title: Control Flow in Python
type: Resource
topic:
  - Python
category: Info Tech
created_at: 2025-02-06T14:26:21-05:00
modified_at: 2025-02-06T14:30:26-05:00
tags:
  - Python
---
# Control Flow in Python

## Overview
Control flow determines the order in which statements are executed in a program. Python provides three main types of control flow mechanisms:
1. Conditional Statements
2. Loops
3. Control Statements (e.g., `break`, `continue`, `pass`)

---

## Conditional Statements
Conditional statements execute specific blocks of code based on conditions.

### `if` Statement
4. Executes a block of code if the condition is `True`.
5. Syntax:
   ```python
   if condition:
       # code block
   ```

Example:
```python
x = 10
if x > 5:
    print("x is greater than 5")
```

---

### `if-else` Statement
6. Executes one block if the condition is `True`, another block if it is `False`.
7. Syntax:
   ```python
   if condition:
       # code block
   else:
       # alternate block
   ```

Example:
```python
x = 3
if x > 5:
    print("x is greater than 5")
else:
    print("x is less than or equal to 5")
```

---

### `if-elif-else` Statement
8. Allows multiple conditions to be tested sequentially.
9. Syntax:
   ```python
   if condition1:
       # code block
   elif condition2:
       # another code block
   else:
       # fallback code block
   ```

Example:
```python
x = 10
if x > 10:
    print("x is greater than 10")
elif x == 10:
    print("x is equal to 10")
else:
    print("x is less than 10")
```

---

### Nested `if` Statements
10. Place an `if` statement inside another `if` to create nested conditions.

Example:
```python
x = 15
if x > 10:
    if x % 2 == 0:
        print("x is greater than 10 and even")
    else:
        print("x is greater than 10 and odd")
```

---

## Loops
Loops are used to execute a block of code multiple times.

### `while` Loop
11. Executes a block of code while a condition is `True`.
12. Syntax:
   ```python
   while condition:
       # code block
   ```

Example:
```python
x = 0
while x < 5:
    print(x)
    x += 1
```

#### `else` Clause with `while`
13. The `else` block executes after the loop ends, provided it wasn’t interrupted by `break`.

Example:
```python
x = 0
while x < 3:
    print(x)
    x += 1
else:
    print("Loop completed")
```

---

### `for` Loop
14. Iterates over a sequence (e.g., list, string, range).
15. Syntax:
   ```python
   for variable in iterable:
       # code block
   ```

Example:
```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```

#### `else` Clause with `for`
16. The `else` block executes after the loop ends, provided it wasn’t interrupted by `break`.

Example:
```python
for num in range(3):
    print(num)
else:
    print("Loop completed")
```

---

## Control Statements
Control statements modify the flow of execution in loops.

### `break`
17. Exits the loop immediately.
18. Commonly used with conditional statements.

Example:
```python
for num in range(10):
    if num == 5:
        break
    print(num)
```

---

### `continue`
19. Skips the current iteration and proceeds to the next.
20. Commonly used with conditional statements.

Example:
```python
for num in range(5):
    if num == 3:
        continue
    print(num)
```

---

### `pass`
21. Does nothing; acts as a placeholder.
22. Useful in situations where code will be implemented later.

Example:
```python
for num in range(5):
    if num == 3:
        pass  # Placeholder for future code
    else:
        print(num)
```

---

## `while` vs `if`
23. `if` executes a block of code once if a condition is `True`.
24. `while` executes a block of code repeatedly as long as a condition is `True`.

### Example Comparison:
#### `if` Statement:
```python
x = 3
if x < 5:
    print("x is less than 5")
```

#### `while` Loop:
```python
x = 0
while x < 5:
    print("x is less than 5")
    x += 1
```

---

## Program Flow
25. Python follows a **top-down execution** model, meaning statements are executed line by line in the order they appear.
26. Conditional and loop statements modify this flow.

---

## Summary
27. Control flow structures like `if`, `for`, and `while` help dictate the order of execution in a Python program.
28. Use control statements (`break`, `continue`, `pass`) to refine loop behavior.
29. Nested and sequential logic allows for complex decision-making within code.

