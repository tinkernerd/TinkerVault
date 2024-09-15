---
title: Basic Data Types
source: finxter.com
topic:
  - Python
  - programming
tags:
  - python
  - programming
  - cheatsheet
type: CheatSheet
---
# Python Cheat Sheet: Basic Data Types
_A puzzle a day to learn, code, and play → Visit [finxter.com](https://finxter.com)_

## 1. Boolean Operations

| Description                    | Example                                                                                                                                     |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- |
| **Boolean**                    | The Boolean data type is either `True` or `False`.                                                                                          |
| Boolean operators by priority: | `not x` → “if x is False, then True” <br> `x and y` → “if x is False, then False, else y” <br> `x or y` → “if x is True, then True, else y” |
| Comparison example:            | `1 < 2 and 0 <= 1 and 3 > 2 and 2 >= 2 and 1 == 1 and 1 != 0  # True`                                                                       |

### Code Example:
```python
x, y = True, False
print(x and not y)  # True
print(not x and y or x)  # True
```

## 2. Conditional False Values

| Description                           | Example                                                                                       |
|---------------------------------------|-----------------------------------------------------------------------------------------------|
| **Falsy Values**                      | Values that evaluate to `False`: `None`, `0`, `0.0`, `''` (empty string), `[]` (empty list), `{}` (empty dict), `set()` |
| Conditional example:                  | If any of the falsy values are used in an `if` statement, they will be treated as `False`.     |

### Code Example:
```python
if None or 0 or 0.0 or '' or [] or {} or set():
    print("Dead code")  # This won't be printed
```

## 3. Arithmetic Operations

| Operation                             | Example                                                                                       |
|---------------------------------------|-----------------------------------------------------------------------------------------------|
| **Addition**                          | `3 + 2  # 5`                                                                                  |
| **Subtraction**                       | `3 - 2  # 1`                                                                                  |
| **Multiplication**                    | `3 * 2  # 6`                                                                                  |
| **Division**                          | `3 / 2  # 1.5`                                                                                |
| **Integer Division**                  | `3 // 2  # 1`                                                                                 |
| **Modulo**                            | `3 % 2  # 1`                                                                                  |
| **Exponentiation**                    | `3 ** 2  # 9`                                                                                 |
| **Absolute Value**                    | `abs(-3)  # 3`                                                                                |
| **Type Conversion (int to float)**    | `float(3)  # 3.0`                                                                             |
| **Type Conversion (float to int)**    | `int(3.9)  # 3`                                                                               |

### Code Example:
```python
x, y = 3, 2
print(x + y)  # 5
print(x - y)  # 1
print(x * y)  # 6
print(x / y)  # 1.5
print(x // y)  # 1
print(x % y)  # 1
print(-x)  # -3
print(abs(-x))  # 3
print(int(3.9))  # 3
print(float(3))  # 3.0
print(x ** y)  # 9
```

## 4. String Operations

| Description                           | Example                                                                                       |
|---------------------------------------|-----------------------------------------------------------------------------------------------|
| **String Creation**                   | 1. `'Yes'` (Single quotes) <br> 2. `"Yes"` (Double quotes) <br> 3. `'''Yes\nWe Can'''` (Triple quotes) <br> 4. `str(5) == '5'` (String method) |
| **Concatenation**                     | `"Ma" + "hatma" == 'Mahatma'`                                                                 |
| **Whitespace Characters**             | Newline: `\n`, Space: `\s`, Tab: `\t`                                                          |

### Indexing and Slicing:
```python
s = "The youngest pope was 11 years old"
print(s[0])  # 'T'
print(s[1:3])  # 'he'
print(s[-3:-1])  # 'ol'
print(s[-3:])  # 'old'
x = s.split()  # creates string array of words
print(x[-3] + " " + x[-1] + " " + x[2] + "s")  # '11 old popes'
```

## 5. Useful String Methods

| Method                                | Description and Example                                                                       |
|---------------------------------------|-----------------------------------------------------------------------------------------------|
| **`strip()`**                         | Removes whitespace: `"    This is lazy\t\n   ".strip()  # 'This is lazy'`                      |
| **`lower()`**                         | Converts to lowercase: `"DrDre".lower()  # 'drdre'`                                            |
| **`upper()`**                         | Converts to uppercase: `"attention".upper()  # 'ATTENTION'`                                    |
| **`startswith()`**                    | Checks if string starts with a prefix: `"smartphone".startswith("smart")  # True`              |
| **`endswith()`**                      | Checks if string ends with a suffix: `"smartphone".endswith("phone")  # True`                  |
| **`find()`**                          | Finds a substring: `"another".find("other")  # 2`                                              |
| **`replace()`**                       | Replaces a substring: `"cheat".replace("ch", "m")  # 'meat'`                                   |
| **`join()`**                          | Joins list elements with a delimiter: `','.join(["F", "B", "I"])  # 'F,B,I'`                   |
| **`len()`**                           | Returns the string length: `len("Rumpelstiltskin")  # 15`                                      |
| **`in`**                              | Checks if a substring exists: `"ear" in "earth"  # True`                                       |

### Code Example:
```python
y = "    This is lazy\t\n   "
print(y.strip())  # 'This is lazy'
print("DrDre".lower())  # 'drdre'
print("attention".upper())  # 'ATTENTION'
print("smartphone".startswith("smart"))  # True
print("smartphone".endswith("phone"))  # True
print("another".find("other"))  # 2
print("cheat".replace("ch", "m"))  # 'meat'
print(','.join(["F", "B", "I"]))  # 'F,B,I'
print(len("Rumpelstiltskin"))  # 15
print("ear" in "earth")  # True
```

---

_For more information, visit [finxter.com](https://finxter.com)._
