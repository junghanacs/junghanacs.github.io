---
title: "Details"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 3
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> A built-in component to display a collapsible content.

<!--more-->


## Example {#example}

{{< details title="Details" >}}
This is the content of the details.

Markdown is *supported*.
{{< /details >}}

{{< details title="Click me to reveal" closed="true" >}}
This will be hidden by default.
{{< /details >}}


## Usage {#usage}


### Org-Mode {#org-mode}

```text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: title="Details"
#+begin_details
This is the content of the details.

Markdown is *supported*.
#+end_details
```

```text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: title="Click me to reveal" closed="true"
#+begin_details
This will be hidden by default.
#+end_details
```


### Markdown {#markdown}

```markdown
{{%/* details title="Details" */%}}

This is the content of the details.

Markdown is **supported**.

{{%/* /details */%}}
```

```markdown
{{%/* details title="Click me to reveal" closed="true" */%}}

This will be hidden by default.

{{%/* /details */%}}
```
