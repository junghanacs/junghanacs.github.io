---
title: "Latex"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 4
math: true
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> \\(\KaTeX\\) is used for rendering LaTeX math expressions. It can be enabled per page by setting `math` to `true` in the page front matter.

<!--more-->

```yaml { linenos=false,filename="Markdown" }
---
title: "My Page with LaTeX"
math: true
---
```

When enabled, the scripts, stylesheets and fonts from KaTeX will be included automatically in your site. You can start using LaTeX math expressions in your Markdown content.


## Example {#example}

Both inline and separate paragraph LaTeX math expressions are supported in the Markdown content.


### Inline {#inline}

```markdown { linenos=false,filename="page.md" }
This $\sigma(z) = \frac{1}{1 + e^{-z}}$ is inline.
```

This \\(\sigma(z) = \frac{1}{1 + e^{-z}}\\) is inline.


### Separate Paragraph {#separate-paragraph}

```markdown { linenos=false,filename="page.md" }
$$F(\omega) = \int_{-\infty}^{\infty} f(t) e^{-j\omega t} \, dt$$
```

will be rendered as:

\\[F(\omega) = \int\_{-\infty}^{\infty} f(t) e^{-j\omega t} \\, dt\\]


## Supported Functions {#supported-functions}

For a list of supported functions, see [KaTeX supported functions](https://katex.org/docs/supported.html).


## Chemistry {#chemistry}

Chemistry expressions are supported via [mhchem](https://mhchem.github.io/MathJax-mhchem/) extension.

Inline: \\(\ce{H2O}\\) is water.

Separate paragraph:

```markdown { linenos=false,filename="page.md" }
$$\ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-}$$
```

\\[\ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-}\\]
