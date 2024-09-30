---
title: "Cards"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
title: Cards Component
linkTitle: Cards
weight: 2
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> <!--more-->


## Example {#example}

{{< cards >}}
{{< card link="../callout" title="Callout" icon="warning" >}}
{{< card link="/" title="No Icon" >}}
{{< /cards >}}

{{< cards >}}
{{< card link="/" title="Image Card" image="https://source.unsplash.com/featured/800x600?landscape" subtitle="Unsplash Landscape" >}}
{{< card link="/" title="Local Image" image="/images/card-image-unprocessed.jpg" subtitle="Raw image under static directory." >}}
{{< card link="/" title="Local Image" image="images/space.jpg" subtitle="Image under assets directory, processed by Hugo." method="Resize" options="600x q80 webp" >}}
{{< /cards >}}


## Usage {#usage}

Org-Mode (FIXME)

```text { linenos=false,filename="Org-Mode" }
#+begin_cards
  {{</* card link="../callout" title="Callout" icon="warning" */>}}
  {{</* card link="/" title="No Icon" */>}}
#+end_cards
```

```text { linenos=false,filename="Org-Mode" }
#+begin_cards
  {{</* card link="/" title="Image Card" image="https://source.unsplash.com/featured/800x600?landscape" subtitle="Unsplash Landscape" */>}}
  {{</* card link="/" title="Local Image" image="/images/card-image-unprocessed.jpg" subtitle="Raw image under static directory." */>}}
  {{</* card link="/" title="Local Image" image="images/space.jpg" subtitle="Image under assets directory, processed by Hugo." method="Resize" options="600x q80 webp" */>}}
#+end_cards
```

Markdown

```text
{{</* cards */>}}
  {{</* card link="../callout" title="Callout" icon="warning" */>}}
  {{</* card link="/" title="No Icon" */>}}
{{</* /cards */>}}
```

```text
{{</* cards */>}}
  {{</* card link="/" title="Image Card" image="https://source.unsplash.com/featured/800x600?landscape" subtitle="Unsplash Landscape" */>}}
  {{</* card link="/" title="Local Image" image="/images/card-image-unprocessed.jpg" subtitle="Raw image under static directory." */>}}
  {{</* card link="/" title="Local Image" image="images/space.jpg" subtitle="Image under assets directory, processed by Hugo." method="Resize" options="600x q80 webp" */>}}
{{</* /cards */>}}
```


## Card Parameters {#card-parameters}

| Parameter  | Description                           |
|------------|---------------------------------------|
| `link`     | URL (internal or external).           |
| `title`    | Title heading for the card.           |
| `subtitle` | Subtitle heading (supports Markdown). |
| `icon`     | Name of the icon.                     |


## Image Card {#image-card}

Additionally, the card supports adding image and processing through these parameters:

| Parameter | Description                                 |
|-----------|---------------------------------------------|
| `image`   | Specifies the image URL for the card.       |
| `method`  | Sets Hugo's image processing method.        |
| `options` | Configures Hugo's image processing options. |

Card supports three kinds of images:

1.  Remote image: the full URL in the `image` parameter.
2.  Static image: use the relative path in Hugo's `static/` directory.
3.  Processed image: use the relative path in Hugo's `assets/` directory.

Hextra auto-detects if image processing is needed during build and applies the `options` parameter or default settings (Resize, 800x, Quality 80, WebP Format). It currently supports these `method`: `Resize`, `Fit`, `Fill` and `Crop`.

For more on Hugo's built in image processing commands, methods, and options see their [Image Processing Documentation](https://gohugo.io/content-management/image-processing/).
