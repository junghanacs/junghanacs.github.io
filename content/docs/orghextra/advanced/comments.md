---
title: "Comments"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 2
title: Comments System
linkTitle: Comments
---

<mark>exported by orghextra on Org_Mode &amp; Emacs</mark> Hextra supports adding comments system to your site. Currently [giscus](https://giscus.app/) is supported.

<!--more-->


## giscus {#giscus}

[giscus](https://giscus.app/) is a comments system powered by [GitHub Discussions](https://docs.github.com/en/discussions). It is free and open source.

To enable giscus, you need to add the following to the site configuration file:

```yaml { linenos=false,filename="hugo.yaml" }
params:
  comments:
    enable: false
    type: giscus

    giscus:
      repo: <repository>
      repoId: <repository ID>
      category: <category>
      categoryId: <category ID>
```

The giscus configurations can be constructed from the [giscus.app](https://giscus.app/) website. More details can also be found there.

Comments can be enabled or disabled for a specific page in the page front matter:

```yaml { linenos=false,filename="content/docs/about.md" }
---
title: About
comments: true
---
```
