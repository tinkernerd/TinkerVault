---
title: Python Loops
type: Resource
topic:
  - Python
category: Info Tech
created_at: 2025-02-06T19:24:51-05:00
modified_at: 2025-02-06T19:26:01-05:00
---

# Loops

## Overview
- Loops allow you to execute a block of code multiple times.
- Useful for iterating over iterables like strings, lists, tuples, dictionaries, sets, and files.



## `for` Loop
- Used to iterate over a sequence (list, tuple, dictionary, set, or string).
- Executes a block of code for each item in the sequence.

### Syntax:
```python
for item in iterable:
    # do something
```

### Examples:
```python
# Simple for loop
for i in range(5):
    print(i)

# Looping through a list
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)

# Using enumerate
for index, value in enumerate(fruits):
    print(index, value)
```


## `while` Loop
- Repeats as long as a specified condition is true.

### Syntax:
```python
while condition:
    # do something
```

### Examples:
```python
# Simple while loop
count = 0
while count < 5:
    print(count)
    count += 1

# Countdown example
number = 10
while number > 0:
    print(number)
    number -= 2
```


## Nested Loops
- Loops can be nested inside each other.
- Useful for working with multidimensional data.

### Examples:
```python
# Nested for loops
for i in range(3):
    for j in range(2):
        print(f"i: {i}, j: {j}")

# Nested while loops
i = 0
while i < 3:
    j = 0
    while j < 2:
        print(f"i: {i}, j: {j}")
        j += 1
    i += 1

# Combination of for and while loop
for i in range(3):
    j = 0
    while j < 2:
        print(f"i: {i}, j: {j}")
        j += 1
```


## Keywords

### `break`
- Exits the loop immediately.
```python
for value in "Python":
    if value == "t":
        break
    print(value)
```

### `continue`
- Skips the current iteration and moves to the next.
```python
for value in "Python":
    if value == "t":
        continue
    print(value)
```

### `pass`
- Does nothing; a placeholder.
```python
for value in "Python":
    if value == "t":
        pass
    print(value)
```


## Using `else` with Loops
- The `else` block is executed when the loop finishes normally (no `break`).

### Example:
```python
for item in range(5):
    print(item)
else:
    print("Loop finished!")
```

Output:
```
0
1
2
3
4
Loop finished!
```

## The `range()` Function
- Generates a sequence of numbers, often used in loops.

### Syntax:
```python
range([start], stop, [step])
```

### Example:
```python
for i in range(1, 10, 2):
    print(i)
```

Output:
```
1
3
5
7
9
```

## Summary
- Loops are essential for iterating over data.
- The `for` loop is ideal for sequences, while the `while` loop is used for conditions.
- Keywords like `break`, `continue`, and `pass` control loop behavior.
- Nested loops and the `else` block provide additional flexibility.
