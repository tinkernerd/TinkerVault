---
title: Python Cheat Sheet - Coding Interview Questions
author: Finxter
source: https://finxter.com/
description: A collection of 14 common Python coding interview questions and solutions, covering topics such as list manipulation, recursion, sorting, and more.
date: 2024-09-15
tags:
  - Python
  - Interview Questions
  - Coding Challenges
  - Algorithms
  - Data Structures
license: CC BY-NC-SA 4.0
version: 1.0
categories:
  - Programming Languages
  - Python
related_topics:
  - Python Algorithms
  - Recursion
  - Data Structures
  - Sorting Algorithms
audience: 
  - Developers
  - Python Learners
  - Job Seekers
  - Programmers
keywords: 
  - Python Interview
  - Python Coding Challenges
  - Quicksort
  - Fibonacci
  - List Manipulation
---
---

# Python Cheat Sheet: 14 Interview Questions

**“A puzzle a day to learn, code, and play”** → Visit [finxter.com](https://finxter.com/)

---

## Check if List Contains Integer
Check if a list contains a specific integer.

```python
l = [3, 3, 4, 5, 2, 111, 5]
print(111 in l)  # Output: True
```

---

## Find Missing Number
Find the missing number from a list of integers from 1 to 100.

```python
def get_missing_number(lst):
    return set(range(1, lst[len(lst)-1])) - set(lst)

l = list(range(1, 100))
l.remove(50)
print(get_missing_number(l))  # Output: 50
```

---

## Find Duplicate Numbers
Find duplicate numbers in a list of integers.

```python
def find_duplicates(elements):
    duplicates, seen = set(), set()
    
    for element in elements:
        if element in seen:
            duplicates.add(element)
        seen.add(element)

    return list(duplicates)
```

---

## Compute Intersection of Two Lists
Find the intersection of two lists.

```python
def intersect(lst1, lst2):
    res, lst2_copy = [], lst2[:]
    
    for el in lst1:
        if el in lst2_copy:
            res.append(el)
            lst2_copy.remove(el)

    return res
```

---

## Check if Strings are Anagrams
Check if two strings are anagrams of each other.

```python
def is_anagram(s1, s2):
    return set(s1) == set(s2)

print(is_anagram("elvis", "lives"))  # Output: True
```

---

## Find Max and Min in Unsorted List
Find the maximum and minimum values in an unsorted list.

```python
l = [4, 3, 6, 3, 4, 888, 1, -11, 22, 3]
print(max(l))  # Output: 888
print(min(l))  # Output: -11
```

---

## Remove All Duplicates from List
Remove all duplicate elements from a list.

```python
lst = list(range(10)) + list(range(10))
lst = list(set(lst))

print(lst)  # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

---

## Reverse String Using Recursion
Reverse a string using recursion.

```python
def reverse(string):
    if len(string) <= 1:
        return string
    return reverse(string[1:]) + string[0]

print(reverse("hello"))  # Output: "olleh"
```

---

## Find Pairs of Integers with Given Sum
Find pairs of integers in a list that sum to a given integer `x`.

```python
def find_pairs(l, x):
    pairs = []
    
    for (i, el_1) in enumerate(l):
        for (j, el_2) in enumerate(l[i+1:]):
            if el_1 + el_2 == x:
                pairs.append((el_1, el_2))

    return pairs
```

---

## Compute First N Fibonacci Numbers
Compute the first `n` Fibonacci numbers.

```python
a, b = 0, 1
n = 10
for i in range(n):
    print(b)
    a, b = b, a + b
```

---

## Check if a String is a Palindrome
Check if a string is a palindrome.

```python
def is_palindrome(phrase):
    return phrase == phrase[::-1]

print(is_palindrome("anna"))  # Output: True
```

---

## Sort List Using Quicksort Algorithm
Sort a list using the Quicksort algorithm.

```python
def qsort(L):
    if L == []:
        return []
    return qsort([x for x in L[1:] if x < L[0]]) + L[0:1] + qsort([x for x in L[1:] if x >= L[0]])

lst = [44, 33, 22, 5, 77, 55, 999]
print(qsort(lst))  # Output: [5, 22, 33, 44, 55, 77, 999]
```

---

## Use List as Stack, Array, and Queue
Demonstrate how to use a list as a stack, array, and queue.

```python
# As a list
l = [3, 4]
l += [5, 6]  # l = [3, 4, 5, 6]

# As a stack
l.append(10)  # l = [3, 4, 5, 6, 10]
l.pop()       # l = [3, 4, 5, 6]

# As a queue
l.insert(0, 5)  # l = [5, 3, 4, 5, 6]
l.pop()         # l = [5, 3, 4, 5]
```

---

## Find All Permutations of a String
Find all permutations of a string.

```python
def get_permutations(w):
    if len(w) <= 1:
        return set(w)
    smaller = get_permutations(w[1:])
    perms = set()
    
    for x in smaller:
        for pos in range(0, len(x) + 1):
            perm = x[:pos] + w[0] + x[pos:]
            perms.add(perm)

    return perms

print(get_permutations("nan"))  # Output: {'nna', 'ann', 'nan'}
```

---

### Source
[finxter.com](https://finxter.com/)