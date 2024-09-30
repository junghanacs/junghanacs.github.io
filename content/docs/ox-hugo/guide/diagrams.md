---
title: "Diagram"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 6
next: /docs/ox-hugo/guide/shortcodes
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> Currently, Hextra supports [Mermaid](#mermaid) for diagrams.

<!--more-->


## Mermaid {#mermaid}

[Mermaid](https://github.com/mermaid-js/mermaid#readme) is a JavaScript based diagramming and charting tool that takes Markdown-inspired text definitions and creates diagrams dynamically in the browser. For example, Mermaid can render flow charts, sequence diagrams, pie charts and more.

Using Mermaid in Hextra is as simple as writing a code block with language set `mermaid`:

````markdown
```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
````

{{< mermaid >}}
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
{{< /mermaid >}}

Sequence diagram:

{{< mermaid >}}
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
{{< /mermaid >}}

For more information, please refer to [Mermaid Documentation](https://mermaid-js.github.io/mermaid/#/).


### Srcblock vs. Shortcode in Emacs {#srcblock-vs-dot-shortcode-in-emacs}

-   srcblock mermaid with ob-mermaid
    -   syntax highlighting in srcblock
    -   caption

<!--listend-->

````mermaid { width="80%" align="center" }
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
````
<div class="src-block-caption">
  <span class="src-block-number">Code Snippet 1:</span>
  TD
</div>
