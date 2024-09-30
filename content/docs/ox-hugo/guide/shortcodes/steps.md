---
title: "Steps"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 6
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> A built-in component to display a series of steps.

<!--more-->


## Example {#example}

{{% steps %}}

### Step 1

This is the first step.

### Step 2

This is the second step.

### Step 3

This is the third step.

{{% /steps %}}


## Usage {#usage}

Put Markdown h3 header within `steps` shortcode.

```text
{{%/* steps */%}}

### Step 1

This is the first step.

### Step 2

This is the second step.

{{%/* /steps */%}}
```
