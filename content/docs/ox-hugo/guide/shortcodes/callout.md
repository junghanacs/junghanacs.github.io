---
title: "Callout"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 1
linkTitle: Callout
aliases:
- callouts
prev: /docs/ox-hugo/guide/shortcodes
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> A built-in component to show important information to the reader.

<!--more-->


## Example {#example}

{{< callout emoji="👾" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="info" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="warning" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}

{{< callout type="error" >}}
A **callout** is a short piece of text intended to attract attention.
{{< /callout >}}


## Usage {#usage}


### Default {#default}

{{< callout emoji="🌐" >}}
Hugo can be used to create a wide variety of websites, including blogs,
portfolios, documentation sites, and more.
{{< /callout >}}

```text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: emoji="🌐"
#+begin_callout
Hugo can be used to create a wide variety of websites, including blogs,
portfolios, documentation sites, and more.
#+end_callout
```

```markdown
{{</* callout emoji="🌐" */>}}
  Hugo can be used to create a wide variety of websites, including blogs, portfolios, documentation sites, and more.
{{</* /callout */>}}
```


### Info {#info}

{{< callout type="info" >}}
Please visit GitHub to see the latest releases.
{{< /callout >}}

```text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: type="info"
#+begin_callout
Please visit GitHub to see the latest releases.
#+end_callout
```

```markdown
{{</* callout type="info" */>}}
Please visit GitHub to see the latest releases.
{{</* /callout */>}}
```


### Warning {#warning}

{{< callout type="warning" >}}
This API will be deprecated in the next version.
{{< /callout >}}

```text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: type="warning"
#+begin_callout
This API will be deprecated in the next version.
#+end_callout
```

```markdown
{{</* callout type="warning" */>}}
This API will be deprecated in the next version.
{{</* /callout */>}}
```


### Error {#error}

{{< callout type="error" >}}
Something went wrong and it's going to explode.
{{< /callout >}}

```text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: type="error"
#+begin_callout
Something went wrong and it's going to explode.
#+end_callout
```

```markdown
{{</* callout type="error" */>}}
Something went wrong and it's going to explode.
{{</* /callout */>}}
```
