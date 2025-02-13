---
title: Python Operators
type: Resource
topic:
  - Python
  - Operators
category: Info Tech
created_at: 2025-02-06T19:21:48-05:00
modified_at: 2025-02-06T19:22:58-05:00
---

# Operators in Python

## Overview
Operators are special symbols or keywords used to perform operations on variables and values. Python supports several categories of operators, including:

1. Arithmetic Operators
2. Comparison Operators
3. Logical Operators
4. Bitwise Operators
5. Assignment Operators
6. Identity Operators
7. Membership Operators

---

## Arithmetic Operators
Used to perform mathematical operations.

| Operator | Description               | Example       | Output |
|----------|---------------------------|---------------|--------|
| `+`      | Addition                  | `5 + 3`       | `8`    |
| `-`      | Subtraction               | `5 - 3`       | `2`    |
| `*`      | Multiplication            | `5 * 3`       | `15`   |
| `/`      | Division                  | `5 / 2`       | `2.5`  |
| `//`     | Floor Division (no float) | `5 // 2`      | `2`    |
| `%`      | Modulus (remainder)       | `5 % 2`       | `1`    |
| `**`     | Exponentiation            | `5 ** 2`      | `25`   |

---

## Comparison Operators
Used to compare two values and return a Boolean (`True` or `False`).

| Operator | Description                | Example       | Output  |
|----------|----------------------------|---------------|---------|
| `==`     | Equal to                   | `5 == 5`      | `True`  |
| `!=`     | Not equal to               | `5 != 3`      | `True`  |
| `>`      | Greater than               | `5 > 3`       | `True`  |
| `<`      | Less than                  | `5 < 3`       | `False` |
| `>=`     | Greater than or equal to   | `5 >= 5`      | `True`  |
| `<=`     | Less than or equal to      | `5 <= 3`      | `False` |

---

## Logical Operators
Used to combine conditional statements.

| Operator | Description               | Example                  | Output  |
|----------|---------------------------|--------------------------|---------|
| `and`    | Returns `True` if both are `True` | `True and False` | `False` |
| `or`     | Returns `True` if one is `True`   | `True or False`  | `True`  |
| `not`    | Reverses the result          | `not True`        | `False` |

---

## Bitwise Operators
Used to perform bit-level operations.

| Operator | Description                    | Example      | Output |
|----------|--------------------------------|--------------|--------|
| `&`      | Bitwise AND                   | `5 & 3`      | `1`    |
| `|`      | Bitwise OR                    | `5 | 3`      | `7`    |
| `~`      | Bitwise NOT                   | `~5`         | `-6`   |
| `^`      | Bitwise XOR                   | `5 ^ 3`      | `6`    |
| `>>`     | Right shift                   | `5 >> 1`     | `2`    |
| `<<`     | Left shift                    | `5 << 1`     | `10`   |

---

## Assignment Operators
Used to assign values to variables.

| Operator | Description                    | Example       | Output  |
|----------|--------------------------------|---------------|---------|
| `=`      | Assign                        | `x = 5`       | `5`     |
| `+=`     | Add and assign                | `x += 3`      | `8`     |
| `-=`     | Subtract and assign           | `x -= 3`      | `2`     |
| `*=`     | Multiply and assign           | `x *= 3`      | `15`    |
| `/=`     | Divide and assign             | `x /= 3`      | `1.67`  |
| `//=`    | Floor divide and assign       | `x //= 3`     | `1`     |
| `%=`     | Modulus and assign            | `x %= 3`      | `2`     |
| `**=`    | Exponent and assign           | `x **= 3`     | `125`   |
| `&=`     | Bitwise AND and assign        | `x &= 3`      | Depends |
| <code>&#124;=</code> | Bitwise OR and assign| <code>x &#124;= 3</code>| Depends |
| `^=`     | Bitwise XOR and assign        | `x ^= 3`      | Depends |
| `>>=`    | Right shift and assign        | `x >>= 3`     | Depends |
| `<<=`    | Left shift and assign         | `x <<= 3`     | Depends |

---

## Identity Operators
Used to compare the memory location of two objects.

| Operator | Description                          | Example          | Output  |
|----------|--------------------------------------|------------------|---------|
| `is`     | Returns `True` if objects are the same | `x is y`      | `True`  |
| `is not` | Returns `True` if objects are different | `x is not y` | `False` |

---

## Membership Operators
Used to test if a sequence contains an item.

| Operator | Description                          | Example                | Output  |
|----------|--------------------------------------|------------------------|---------|
| `in`     | Returns `True` if item exists        | `'a' in 'apple'`       | `True`  |
| `not in` | Returns `True` if item does not exist | `'b' not in 'apple'`   | `True`  |

---

## Order of Operations
Python follows the **PEMDAS** rule for operator precedence:
8. **Parentheses** `()`
9. **Exponentiation** `**`
10. **Multiplication/Division/Modulus/Floor Division** `*`, `/`, `%`, `//`
11. **Addition/Subtraction** `+`, `-`
12. **Comparison Operators** `<`, `<=`, `>`, `>=`, `==`, `!=`
13. **Logical Operators** `not`, `and`, `or`

Example:

```python
result = (5 + 3) * 2 ** 2
print(result)  # Output: 32
```

---

## Summary
Python operators are essential tools for performing operations, comparisons, and manipulating data. Understanding their functionality and precedence allows for writing efficient and clear code.

