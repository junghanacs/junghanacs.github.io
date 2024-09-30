---
title: "Demonstration of Org mode syntax"
author: ["Peter Prevos"]
date: 2024-08-16T00:00:00+09:00
draft: false
weight: 10
title: "Org mode demo"
math: true
---

<a class="org-gls" href="#gls.1" id="glsr.1.1">이맥스</a>
<mark>조직 모드 예시</mark>


## Heading 1 {#heading-1}

Nullam eu ante vel est convallis dignissim. Fusce suscipit, wisi nec facilisis facilisis, est dui fermentum leo, quis tempor ligula erat quis odio. Nunc porta vulputate tellus. Nunc rutrum turpis sed pede. Sed bibendum. Aliquam posuere. Nunc aliquet, augue nec adipiscing interdum, lacus tellus malesuada massa, quis varius mi purus non odio. Pellentesque condimentum, magna ut suscipit hendrerit, ipsum augue ornare nulla, non luctus diam neque sit amet urna. Curabitur vulputate vestibulum lorem. Fusce sagittis, libero non molestie mollis, magna orci ultrices dolor, at vulputate neque nulla lacinia eros. Sed id ligula quis est convallis tempor. Curabitur lacinia pulvinar nibh. Nam a sapien.


### Heading 2 {#heading-2}

Aliquam erat volutpat. Nunc eleifend leo vitae magna. In id erat non orci commodo lobortis. Proin neque massa, cursus ut, gravida ut, lobortis eget, lacus. Sed diam. Praesent fermentum tempor tellus. Nullam tempus. Mauris ac felis vel velit tristique imperdiet. Donec at pede. Etiam vel neque nec dui dignissim bibendum. Vivamus id enim. Phasellus neque orci, porta a, aliquet quis, semper a, massa. Phasellus purus. Pellentesque tristique imperdiet tortor. Nam euismod tellus id erat.


#### Heading 3 {#heading-3}

Nullam eu ante vel est convallis dignissim. Fusce suscipit, wisi nec facilisis facilisis, est dui fermentum leo, quis tempor ligula erat quis odio. Nunc porta vulputate tellus. Nunc rutrum turpis sed pede. Sed bibendum. Aliquam posuere. Nunc aliquet, augue nec adipiscing interdum, lacus tellus malesuada massa, quis varius mi purus non odio. Pellentesque condimentum, magna ut suscipit hendrerit, ipsum augue ornare nulla, non luctus diam neque sit amet urna. Curabitur vulputate vestibulum lorem. Fusce sagittis, libero non molestie mollis, magna orci ultrices dolor, at vulputate neque nulla lacinia eros. Sed id ligula quis est convallis tempor. Curabitur lacinia pulvinar nibh. Nam a sapien.


## Text formatting {#text-formatting}

-   Normal text
-   _Italic_
-   **Bold**
-   <span class="underline">Underline</span>
-   ~~Strighthrough~~
-   `Verbatim`


## Lists {#lists}

-   Item
    -   next item
        1.  Numbered list
        2.  And another 1). Numbers 2). With parenthesis

<!--listend-->

3.  First line
4.  Second line


## Links {#links}

-   [Wikipedia](https://wikipedia.org/) (internet link)
-   [Book introduction]({{< relref "01-introduction" >}}) (file link)


## Images {#images}

Images are file links:

{{< figure src="/images/splash-screen.png" caption="<span class=\"figure-number\">Figure 1: </span>Emacs splash screen" >}}


## Tables {#tables}

<div class="table-caption">
  <span class="table-number">Table 1:</span>
  Top five countries by size.
</div>

| Country                                                   | Area     |
|:---------------------------------------------------------:|:---------|
| Russia                                                    | 17098242 |
| <a class="org-gls" href="#gls.2" id="glsr.2.1">Canada</a> | 9984670  |
| <a class="org-gls" href="#gls.3" id="glsr.3.1">China</a>  | 9640011  |
| United States                                             | 9629031  |
| Brazil                                                    | 8514877  |


## Mathematics {#mathematics}

Requires LaTeX to display:

\\[\frac{1}{\pi} = \frac{\sqrt{8}}{9801} \sum\_{n=0}^{\infty} \frac{(4n)!}{(n!)^4} \times \frac{26390n + 1103}{396^{4n}}\\]


## Citations {#citations}

Read the Emacs Manual (<a href="#citeproc_bib_item_2">Stallman, 1981</a>).

Also (seeing <a href="#citeproc_bib_item_1">Blevins, 2017, p. 121</a>)

## References

<style>.csl-entry{text-indent: -1.5em; margin-left: 1.5em;}</style><div class="csl-bib-body">
  <div class="csl-entry"><a id="citeproc_bib_item_1"></a>Blevins, J. R. (2017). <i>Guide to Markdown Mode for Emacs</i>. LeanPub.</div>
  <div class="csl-entry"><a id="citeproc_bib_item_2"></a>Stallman, R. M. (1981). <i>Emacs manual for its users</i>. Retrieved from <a href="http://hdl.handle.net/1721.1/6329">http://hdl.handle.net/1721.1/6329</a></div>
</div>


## Glossary {#glossary}

**<span class="org-glsdef" id="gls.551">이맥스</span>**&emsp;멋쟁이 텍스트 에디터&ensp;<a class="org-glsdef" href="#glsr.1.1">1</a>

**<span class="org-glsdef" id="gls.549">China</span>**&emsp;중국&ensp;<a class="org-glsdef" href="#glsr.3.1">1</a>

**<span class="org-glsdef" id="gls.550">Canada</span>**&emsp;캐나다&ensp;<a class="org-glsdef" href="#glsr.2.1">1</a>
