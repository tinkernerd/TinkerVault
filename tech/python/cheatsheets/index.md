---
title: " World's Most Dense Python Cheat Sheet"
---
# World's Most Dense Python Cheat Sheet

## Basic Data Structures
- **Boolean**: True or False, `not`, `and`, `or`.
  ```python
  True and False  # False
  not False  # True
  ```
- **Integer & Float**: Mathematical operations and rounding.
  ```python
  x, y = 3, 2
  print(x + y)  # 5
  print(x // y)  # 1
  ```

## Conditional Execution
- `if`, `elif`, `else` conditions:
  ```python
  x = 5
  if x > 3:
      print("Big")
  elif x == 3:
      print("3")
  else:
      print("Small")
  ```

## Loops
- `for` and `while` loops:
  ```python
  for i in [0, 1, 2]:
      print(i)
  ```

## Functions
- Define functions using `def`:
  ```python
  def increment(x):
      return x + 1
  ```

## Strings
- Methods such as `.upper()`, `.find()`, and `.replace()`:
  ```python
  s = "hello world"
  s.upper()  # "HELLO WORLD"
  s.replace("hello", "hi")  # "hi world"
  ```

## Lists
- Methods like `.append()`, `.insert()`, `.remove()`:
  ```python
  l = [1, 2, 3]
  l.append(4)  # [1, 2, 3, 4]
  l.remove(1)  # [2, 3, 4]
  ```

## Dictionaries
- Access and modify using keys:
  ```python
  d = {"apple": 52, "banana": 89}
  print(d["apple"])  # 52
  d["orange"] = 100
  ```

## Sets
- Unordered collections of unique elements:
  ```python
  s = {'apple', 'banana', 'orange'}
  print('banana' in s)  # True
  ```
