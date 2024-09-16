---
title: ChatGPT Prompting Cheat Sheet
author: Finxter
source: https://finxter.com/
description: A guide to prompt engineering with ChatGPT, covering rules of thumb, examples, and best practices for effective interactions with language models.
date: 2024-09-15
tags:
  - OpenAI
  - ChatGPT
  - Prompt
  - Engineering
  - AI
  - Cheat
  - Sheet
license: CC BY-NC-SA 4.0
version: 1
categories:
  - Artificial Intelligence
  - Natural Language Processing
related_topics:
  - Language Models
  - GPT Models
  - OpenAI API
audience:
  - AI Developers
  - Data Scientists
  - Developers
  - AI Enthusiasts
keywords:
  - ChatGPT Prompting
  - OpenAI Cheat Sheet
  - Prompt Engineering Guide
topic:
  - Tech
---

# ChatGPT Prompting Cheat Sheet

## How Prompt Engineering Works

Prompt engineering is the process of designing and optimizing prompts for language models like ChatGPT. It’s crucial for natural language processing (NLP) and language generation tasks, such as product descriptions or conversational AI.

- Prompts guide the model in performing specific tasks.
- Reliable prompt formats exist, but experimenting with new formats is encouraged.

---

## Rules of Thumb for Prompt Engineering

### Rule #1: Instructions and Separators

Start with clear instructions at the beginning of the prompt and use `###` or `"""` to separate instructions or context.

Example:

```text
Rewrite the text below in more engaging language.

Text: """
{your input here}
"""
```

---

### Rule #2: Be Specific and Detailed

Be explicit about the desired context, outcome, length, format, and style.

Example:

```text
Write a funny soccer story for kids that teaches the importance of persistence, in the style of J.K. Rowling.
```

---

### Rule #3: Provide Example Outputs

If possible, provide examples of the desired output format.

Example:

```text
Extract house pricing data from the following text.

Desired format: """
House 1 | $1,000,000 | 100 sqm
House 2 | $500,000 | 90 sqm
"""
```

---

### Rule #4: Try Without Examples First

When starting, avoid providing examples. If results are suboptimal, provide examples for better clarity.

Example:

```text
Extract brand names from the text below.

Text: Finxter and YouTube are tech companies.
Brand names:
```

---

### Rule #5: Fine-Tuning

Fine-tuning the model improves performance. This technique trains the model on specific examples to produce higher-quality results, save tokens, and reduce latency.

Example training data:

```json
{"prompt": "<input>", "completion": "<ideal output>"}
{"prompt": "<input>", "completion": "<ideal output>"}
...
```

---

### Rule #6: Omit Needless Words

Be concise and to the point to avoid unnecessary complexity.

Example:

```text
Write a 5-sentence sales page selling sand in the desert.
```

---

### Rule #7: Use Leading Words

Use specific words or phrases to guide the model toward a desired pattern.

Example:

```python
# Python function that plots net worth over 10 years
# for different inputs on the initial investment and a given ROI

import matplotlib.pyplot as plt

def plot_net_worth(initial, roi):
    # Function implementation
```

---

### Bonus Prompt: Let ChatGPT Design the Prompt

Allow ChatGPT to design an optimal prompt based on the task. For example, ask it:

```text
ChatGPT, what would be the most effective prompt for generating a marketing copy about solar panels?
```
