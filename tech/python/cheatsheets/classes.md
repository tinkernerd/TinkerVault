---
title: Python Cheat Sheet - Classes
author: Finxter
source: https://finxter.com/
description: A quick reference cheat sheet for Python classes, covering class creation, instances, and common class methods.
date: 2024-09-15
tags:
  - Python
  - Cheat Sheet
  - Programming
  - Classes
  - Object-Oriented Programming
license: CC BY-NC-SA 4.0
version: 1.0
categories:
  - Programming Languages
  - Python
related_topics:
  - Inheritance
  - Polymorphism
  - Encapsulation
  - Python Object-Oriented Programming
audience: 
  - Developers
  - Students
  - Python Learners
keywords: 
  - Python Classes
  - Object-Oriented Programming
  - Python Cheat Sheet
---

# Python Cheat Sheet: Classes

**“A puzzle a day to learn, code, and play”** → Visit [finxter.com](https://finxter.com/)

## Classes Overview

A class encapsulates data and functionality: data as attributes, and functionality as methods. It is a blueprint for creating concrete instances in memory.

| **Description**            | **Example**                                                    |
|----------------------------|----------------------------------------------------------------|
| Class                       | A class is a blueprint for creating instances.                 |
| Attributes                  | Data stored within the class.                                  |
| Methods                     | Functions defined within a class.                             |
| Class Variable              | Shared by all instances of the class.                         |
| Instance                    | A concrete implementation of a class.                        |

---

## Class Example

Here is a Python class for a dog, demonstrating class variables, methods, and how instances interact with class attributes:

```python
class Dog:
    """ Blueprint of a dog """
    
    # class variable shared by all instances
    species = ["canis lupus"]

    def __init__(self, name, color):
        self.name = name
        self.state = "sleeping"
        self.color = color

    def command(self, x):
        if x == self.name:
            self.bark(2)
        elif x == "sit":
            self.state = "sit"
        else:
            self.state = "wag tail"

    def bark(self, freq):
        for i in range(freq):
            print(f"[{self.name}]: Woof!")

# Create instances
bello = Dog("bello", "black")
alice = Dog("alice", "white")

# Accessing attributes
print(bello.color)  # black
print(alice.color)  # white

# Calling methods
bello.bark(1)  # [bello]: Woof!
alice.command("sit")
print(f"[alice]: {alice.state}")  # [alice]: sit
bello.command("no")
print(f"[bello]: {bello.state}")  # [bello]: wag tail
alice.command("alice")  # [alice]: Woof! Woof!
```

---

## Instance

An instance is a specific, concrete implementation of a class. All attributes of an instance have a fixed value. For example, your hair color is either blond, brown, or black—but never unspecified. Each instance has its own attributes independent of other instances.

In the example above, both `bello` and `alice` are instances of the `Dog` class, with unique attributes such as `name` and `color`. However, they share the class variable `species`.

---

## Self Argument

The `self` argument refers to the specific instance of the class. When defining methods in a class, the first argument is always `self`, which provides access to the instance’s attributes and methods. When calling an instance method, you do not need to explicitly pass `self`; it is handled automatically by Python.

---

## Class Creation Example

Classes can be created dynamically to represent more complex data types. Here’s a quick example:

```python
class Employee:
    pass

employee = Employee()
employee.salary = 122000
employee.firstname = "alice"
employee.lastname = "wonderland"

print(f"{employee.firstname} {employee.lastname} {employee.salary}$")
# Output: alice wonderland 122000$
```

---

### Source
[finxter.com](https://finxter.com/)

---