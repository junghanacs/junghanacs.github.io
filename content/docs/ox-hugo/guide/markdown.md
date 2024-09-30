---
title: "Markdown"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 2
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> Hugo supports [Markdown](https://en.wikipedia.org/wiki/Markdown) syntax for formatting text, creating lists, and more. This page will show you some of the most common Markdown syntax examples.

<!--more-->


## Markdown Examples {#markdown-examples}


### Styling Text {#styling-text}

수정 필요 : 잘 안가져와 진다. 그냥 그려야 할 듯


### Blockquotes {#blockquotes}

Blockquote with attribution

> Don't communicate by sharing memory, share memory by communicating. --- Rob Pike[^fn:1]


### Tables {#tables}

Tables aren't part of the core Markdown spec, but Hugo supports them out-of-the-box.

| Name  | Age |
|-------|-----|
| Bob   | 27  |
| Alice | 23  |


#### Inline Markdown within tables {#inline-markdown-within-tables}

| Italics   | Bold     | Code   |
|-----------|----------|--------|
| _italics_ | **bold** | `code` |


### Code Blocks {#code-blocks}

{{< cards >}}
  {{< card link="../../guide/syntax-highlighting" title="Syntax Highlighting" icon="sparkles" >}}
{{< /cards >}}


### Lists {#lists}


#### Ordered List {#ordered-list}

1.  First item
2.  Second item
3.  Third item


#### Unordered List {#unordered-list}

-   List item
-   Another item
-   And another item


#### Nested list {#nested-list}

-   Fruit
    -   Apple
    -   Orange
    -   Banana
-   Dairy
    -   Milk
    -   Cheese


### Images {#images}

<https://source.unsplash.com/featured/800x600?landscape>

org-attach 이용 (local) ![](/home/junghan/sync/org/docs/20240427_083652_screenshot.png)

With caption:

{{< figure src="/home/junghan/sync/org/docs/20240427_083652_screenshot.png" caption="<span class=\"figure-number\">Figure 1: </span>Unsplash Landscape" >}}

다른 예 (online)

{{< figure src="https://blog.kakaocdn.net/dn/bJbCaW/btruoMzyP7g/fVjLSAGLhN34T7laqWiO60/img.png" caption="<span class=\"figure-number\">Figure 2: </span>[그림 2] 올바른 줄임말 사용 예시" >}}


## Configuration {#configuration}

Hugo uses [Goldmark](https://github.com/yuin/goldmark) for Markdown parsing. Markdown rendering can be configured in `hugo.yaml` under `markup.goldmark`. Below is the default configuration for Hextra:

```yaml
markup:
  goldmark:
    renderer:
      unsafe: true
  highlight:
    noClasses: false
```

For more configuration options, see Hugo documentation on [Configure Markup](https://gohugo.io/getting-started/configuration-markup/).


## Learning Resources {#learning-resources}

-   [Markdown Guide](https://www.markdownguide.org/)
-   [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
-   [Markdown Tutorial](https://www.markdowntutorial.com/)
-   [Markdown Reference](https://commonmark.org/help/)

[^fn:1]: The above quote is excerpted from Rob Pike's [talk](https://www.youtube.com/watch?v=PAAkCSZUG1c) during Gopherfest, November 18, 2015.
