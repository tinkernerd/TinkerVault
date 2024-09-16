---
title: Python OpenAI API Cheat Sheet
author: Finxter
source: https://blog.finxter.com/openapi-cheat-sheet/
description: A quick reference guide for using the Python OpenAI API, covering installation, basic prompt usage, and key arguments for the GPT and DALL-E models.
date: 2024-09-15
tags:
  - Python
  - OpenAI
  - API
  - Cheat
  - Sheet
  - AI
  - Models
license: CC BY-NC-SA 4.0
version: 1
categories:
  - Artificial Intelligence
  - Python
  - APIs
related_topics:
  - GPT Models
  - DALL-E
  - OpenAI API
  - Image Generation
audience:
  - Python Developers
  - AI Enthusiasts
  - Data Scientists
  - Developers
keywords:
  - OpenAI API Cheat Sheet
  - GPT-4 API
  - Python OpenAI API
  - DALL-E
topic:
  - Tech
---

# Python OpenAI API Cheat Sheet
## Getting Started

### Installation (CMD, Terminal, Shell, PowerShell)

```bash
pip install openai
```

or

```bash
pip3 install openai
```

---

## Basic OpenAI API Usage

```python
import os
import openai

# Add your API key here
openai.api_key = "sk-123456789"

response = openai.Completion.create(
    model="text-davinci-003",
    prompt="2+2=",
    temperature=0,
    max_tokens=10
)

print(response.choices[0].text.strip())  # Output: 4
```

---

## Example: Sentiment Analysis

```python
prompt = """Do sentiment analysis on the following text:
'Oh, I just adore how the sun shines so brightly at 5 a.m., waking me up every single morning!'"""

response = openai.Completion.create(
    engine="text-davinci-003",
    prompt=prompt,
    max_tokens=200,
    temperature=0.5
)

sentiment = response.choices[0].text.strip()
print(sentiment)  # Output: Positive
```

---

## Example: Image Generation with DALL-E

```python
prompt = "An oil painting of a dancing robot in the style of Monet"

response = openai.Image.create(
    prompt=prompt,
    n=1,
    size="256x256"
)

url = response["data"][0]["url"]
print(url)  # Output: https://...
```

---

## Example: GPT-4 Chat Completion

```python
system = 'You only reply in emojis!'
prompt = 'Who are you?'

response = openai.ChatCompletion.create(
    model="gpt-4",
    messages=[
        {"role": "system", "content": system},
        {"role": "user", "content": prompt}
    ],
    max_tokens=100,
    temperature=1.2
)

print(response['choices'][0]['message']['content'])  # Output: (Emoji-based response)
```

---

## Arguments for OpenAI API Calls

- **model**: Specifies the model version, e.g., `'gpt-4.0-turbo'`.
- **prompt**: The input text for the model to process (e.g., question).
- **max_tokens**: Maximum tokens in the response. Roughly equates to the number of words.
- **temperature**: Controls output randomness (0 to 1). A higher value leads to more creative responses.
- **top_p**: Nucleus sampling strategy (0 to 1). The model will only consider a subset of tokens whose probability exceeds `top_p`.
- **n**: Number of independent completions to generate.
- **stream**: Use streaming mode (`True` or `False`) to return results incrementally (e.g., for real-time applications).
- **echo**: Include the input prompt in the output (`True` or `False`).
- **stop**: Specifies stopping sequence(s) for text generation (string or list of strings).
- **presence_penalty**: Penalizes similar tokens in the output, encouraging diversity.
- **frequency_penalty**: Penalizes frequent tokens in the output to reduce repetition.

---

## Image Generation Pricing

- **1024x1024**: $0.020 / image
- **512x512**: $0.018 / image
- **256x256**: $0.016 / image

---
