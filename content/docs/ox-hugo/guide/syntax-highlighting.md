---
title: "Syntax Highlighting"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 3
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> Hugo uses [Chroma](https://github.com/alecthomas/chroma), a general purpose syntax highlighter in pure Go, for syntax highlighting. It is recommended to use backticks for code blocks in Markdown content. For example:

<!--more-->

````markdown { linenos=false,filename="Markdown" }
```python
def say_hello():
    print("Hello!")
```
````

will be rendered as:

````python
def say_hello():
    print("Hello!")
````


## Features {#features}


### Filename {#filename}

To add a filename or title to the code block, set attribute `filename`:

````markdown { linenos=false,filename="Markdown" }
```python {filename="hello.py"}
def say_hello():
    print("Hello!")
```
````

````python { linenos=true,filename="hello.py" }
def say_hello():
    print("Hello!")
````


### Line Numbers {#line-numbers}

To set line numbers, set attribute `linenos` to `table` and optionally set `linenostart` to the starting line number:

````markdown { linenos=false,filename="Markdown" }
```python {linenos=table,linenostart=42}
def say_hello():
    print("Hello!")
```
````

````python { linenos=table,linenostart=42 }
def say_hello():
    print("Hello!")
````


### Highlighting Lines {#highlighting-lines}

To highlight lines, set attribute `hl_lines` to a list of line numbers:

````markdown { linenos=false,filename="Markdown" }
```python {linenos=table,hl_lines=[2,4],linenostart=1,filename="hello.py"}
def say_hello():
    print("Hello!")

def main():
    say_hello()
```
````

````python { linenos=table,hl_lines=[2,4],linenostart=1,filename="hello.py" }
def say_hello():
    print("Hello!")

def main():
    say_hello()
````


### Copy Button {#copy-button}

By default, copy button is enabled for code blocks.


## Supported Languages {#supported-languages}

For a list of supported languages, please see the [Chroma documentation](https://github.com/alecthomas/chroma#supported-languages).
