---
title: Python Cheat Sheet - Functions and Tricks
author: Finxter
source: https://finxter.com/
description: A quick reference guide covering Python's advanced functions and handy tricks, including map, filter, sorted, zip, and more.
date: 2024-09-15
tags:
  - Python
  - Cheat Sheet
  - Programming
  - Functions
  - Python Tricks
license: CC BY-NC-SA 4.0
version: 1.0
categories:
  - Programming Languages
  - Python
related_topics:
  - Functional Programming
  - Lambda Functions
  - Python Utilities
  - Zen of Python
audience: 
  - Developers
  - Python Learners
  - Programmers
keywords: 
  - Python Functions
  - Map and Filter
  - Python Tricks
  - Cheat Sheet
---
---

### Python Cheat Sheet: Functions and Tricks

**“A puzzle a day to learn, code, and play”** → Visit [finxter.com](https://finxter.com/)

---

### Table of Contents
- [Advanced Functions](#advanced-functions)
  - [map(func, iter)](#mapfunc-iter)
  - [filter(func, iterable)](#filterfunc-iterable)
  - [sorted(iter)](#sortediter)
  - [zip(i1, i2, ...)](#zipi1-i2-)
- [Tricks](#tricks)
  - [Python HTTP Server](#python-http-server)
  - [Swapping Variables](#swapping-variables)
  - [Unpacking Arguments](#unpacking-arguments)
  - [Extended Unpacking](#extended-unpacking)
  - [Merge Two Dictionaries](#merge-two-dictionaries)

---

### Advanced Functions

#### `map(func, iter)`
Executes a function on all elements of an iterable.

```python
list(map(lambda x: x[0], ['red', 'green', 'blue']))
# Output: ['r', 'g', 'b']
```

You can also apply the function across multiple iterables.

```python
list(map(lambda x, y: str(x) + ' ' + y + 's', [0, 2, 2], ['apple', 'orange', 'banana']))
# Output: ['0 apples', '2 oranges', '2 bananas']
```

#### `filter(func, iterable)`
Filters out elements in an iterable for which the function returns `False`.

```python
list(filter(lambda x: True if x > 17 else False, [1, 15, 17, 18]))
# Output: [18]
```

#### `sorted(iter)`
Sorts an iterable in ascending order.

```python
sorted([8, 3, 2, 42, 5])
# Output: [2, 3, 5, 8, 42]
```

You can also sort using a key function.

```python
sorted([8, 3, 2, 42, 5], key=lambda x: 0 if x == 42 else x)
# Output: [42, 2, 3, 5, 8]
```

#### `zip(i1, i2, ...)`
Groups the i-th elements of iterators together.

```python
list(zip(['Alice', 'Anna'], ['Bob', 'Jon', 'Frank']))
# Output: [('Alice', 'Bob'), ('Anna', 'Jon')]
```

You can also unzip with `zip(*...)`.

```python
list(zip(*[('Alice', 'Bob'), ('Anna', 'Jon')]))
# Output: [('Alice', 'Anna'), ('Bob', 'Jon')]
```

---

### Tricks

#### Python HTTP Server
Want to share files between your PC and phone? Run the following command in your PC's shell:

```bash
python -m http.server <PORT>
```

Replace `<PORT>` with any number between 0 and 65535. On your phone, type `<PC_IP>:<PORT>` into the browser to browse files on the PC.

#### Swapping Variables
Swapping variables is easy in Python (compared to Java):

```python
a, b = 'Jane', 'Alice'
a, b = b, a
# Now a = 'Alice' and b = 'Jane'
```

#### Unpacking Arguments
You can pass a sequence as function arguments using `*`, or a dictionary with `**`.

```python
def f(x, y, z):
    return x + y * z

f(*[1, 3, 4])  # Output: 13
f(**{'z': 4, 'x': 1, 'y': 3})  # Output: 13
```

#### Extended Unpacking
Use unpacking for multiple assignments.

```python
a, *b = [1, 2, 3, 4, 5]
# Now a = 1 and b = [2, 3, 4, 5]
```

#### Merge Two Dictionaries
Merge two dictionaries using unpacking.

```python
x = {'Alice': 18}
y = {'Bob': 27, 'Ann': 22}
z = {**x, **y}
# Now z = {'Alice': 18, 'Bob': 27, 'Ann': 22}
```

---

### Source
[finxter.com](https://finxter.com/)