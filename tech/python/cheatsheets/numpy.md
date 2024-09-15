---
title: Python Cheat Sheet - NumPy
author: Finxter
source: https://finxter.com/
description: A comprehensive reference guide for NumPy, covering essential operations such as array manipulation, matrix multiplication, sorting, statistical functions, and more.
date: 2024-09-15
tags:
  - Python
  - NumPy
  - Cheat Sheet
  - Data Science
  - Array Manipulation
license: CC BY-NC-SA 4.0
version: 1.0
categories:
  - Programming Languages
  - Python
  - Data Science
related_topics:
  - Python Libraries
  - Array Manipulation
  - NumPy Operations
  - Data Analysis
audience: 
  - Data Scientists
  - Python Developers
  - Machine Learning Engineers
  - Programmers
keywords: 
  - NumPy Cheat Sheet
  - Array Operations
  - Python Data Science
  - NumPy Matrix Multiplication
---
---
# Python Cheat Sheet: NumPy

**“A puzzle a day to learn, code, and play”** → Visit [finxter.com](https://finxter.com/)

---
## Array Shape and Dimensions

#### `a.shape`
The `shape` attribute of a NumPy array returns a tuple of integers. Each integer represents the number of elements along that axis.

```python
a = np.array([[1, 2], [1, 1], [0, 0]])
print(np.shape(a))  # Output: (3, 2)
```

#### `a.ndim`
The `ndim` attribute returns the number of dimensions of the array, which is equal to the length of the shape tuple.

```python
print(np.ndim(a))  # Output: 2
```

---

## Matrix Multiplication

### Hadamard Product (`*`)
Performs element-wise multiplication of two arrays (Hadamard product).

```python
a = np.array([[2, 0], [0, 2]])
b = np.array([[1, 1], [1, 1]])
print(a * b)  # Output: [[2 0] [0 2]]
```

### Matrix Multiplication (`np.matmul(a, b)` or `a @ b`)
Performs standard matrix multiplication between two arrays.

```python
print(np.matmul(a, b))  # Output: [[2 2] [2 2]]
```

---

## Array Creation and Manipulation

#### `np.arange([start, ]stop, [step])`
Creates a 1D NumPy array with evenly spaced values.

```python
print(np.arange(0, 10, 2))  # Output: [0 2 4 6 8]
```

#### `np.linspace(start, stop, num=50)`
Creates a 1D array with `num` evenly spaced values between `start` and `stop`.

```python
print(np.linspace(0, 10, 3))  # Output: [ 0.  5. 10.]
```

### Slicing with Assignment
Replaces the selected slice with a value.

```python
a = np.array([0, 1, 0, 0, 0])
a[::2] = 2
print(a)  # Output: [2 1 2 0 2]
```

---

## Statistical Operations

#### `np.average(a)`
Calculates the average of all elements in the array.

```python
a = np.array([[2, 0], [0, 2]])
print(np.average(a))  # Output: 1.0
```

#### `np.var(a)`
Calculates the variance of the array.

```python
a = np.array([2, 6])
print(np.var(a))  # Output: 4.0
```

#### `np.std(a)`
Calculates the standard deviation of the array.

```python
print(np.std(a))  # Output: 2.0
```

#### `np.diff(a)`
Calculates the difference between subsequent elements in the array.

```python
fibs = np.array([0, 1, 1, 2, 3, 5])
print(np.diff(fibs, n=1))  # Output: [1 0 1 1 2]
```

#### `np.cumsum(a)`
Calculates the cumulative sum of the elements in the array.

```python
print(np.cumsum(np.arange(5)))  # Output: [ 0  1  3  6 10]
```

---

## Sorting and Searching

#### `np.sort(a)`
Returns a sorted array (ascending order).

```python
a = np.array([10, 3, 7, 1, 0])
print(np.sort(a))  # Output: [ 0  1  3  7 10]
```

#### `np.argsort(a)`
Returns the indices that would sort the array.

```python
a = np.array([10, 3, 7, 1, 0])
print(np.argsort(a))  # Output: [4 3 1 2 0]
```

#### `np.max(a)`
Returns the maximum value in the array.

```python
print(np.max(a))  # Output: 10
```

#### `np.argmax(a)`
Returns the index of the maximum value in the array.

```python
print(np.argmax(a))  # Output: 0
```

#### `np.nonzero(a)`
Returns the indices of non-zero elements in the array.

```python
a = np.array([10, 3, 7, 1, 0])
print(np.nonzero(a))  # Output: [0 1 2 3]
```

---

## Advanced NumPy Functions

#### `np.matmul` (Matrix Multiplication)
Performs standard matrix multiplication, similar to using the `@` operator.

```python
a = np.array([[2, 0], [0, 2]])
b = np.array([[1, 1], [1, 1]])
print(np.matmul(a, b))  # Output: [[2 2] [2 2]]
```

#### `np.diff` (Differences Between Elements)
Computes the n-th difference between successive elements of the array.

```python
a = np.array([0, 1, 1, 2, 3, 5])
print(np.diff(a))  # Output: [1 0 1 1 2]
```

#### `np.cumsum` (Cumulative Sum)
Returns the cumulative sum of the elements along a given axis.

```python
a = np.array([1, 2, 3])
print(np.cumsum(a))  # Output: [1 3 6]
```

#### `np.argsort` (Indices of Sorted Array)
Returns the indices that would sort an array.

```python
a = np.array([3, 1, 2])
print(np.argsort(a))  # Output: [1 2 0]
```

---

### Source
[finxter.com](https://finxter.com/)