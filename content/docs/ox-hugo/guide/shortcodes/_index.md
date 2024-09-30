---
title: "Shortcodes"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 6
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> <!--more-->

[Hugo Shortcodes](https://gohugo.io/content-management/shortcodes/) are simple snippets inside your content files calling built-in or custom templates.

Hextra provides a collection of beautiful shortcodes to enhance your content.

{{< cards >}}
  {{< card link="callout" title="Callout" icon="warning" >}}
  {{< card link="cards" title="Cards" icon="card" >}}
  {{< card link="details" title="Details" icon="chevron-right" >}}
  {{< card link="filetree" title="FileTree" icon="folder-tree" >}}
  {{< card link="icon" title="Icon" icon="badge-check" >}}
  {{< card link="steps" title="Steps" icon="one" >}}
  {{< card link="tabs" title="Tabs" icon="collection" >}}
{{< /cards >}}


## Icon {#icon}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> To use this shortcode inline, inline shortcode needs to be enabled in the config:

```yaml { linenos=false,filename="hugo.yaml" }
enableInlineShortcodes: true
```

List of available icons can be found in [`data/icons.yaml`](https://github.com/imfing/hextra/blob/main/data/icons.yaml).

<!--more-->


### Example {#example}

{{< icon "academic-cap" >}}
{{< icon "cake" >}}
{{< icon "gift" >}}
{{< icon "sparkles" >}}

{{< icon "github" >}}

{{< icon "academic-cap" >}}


### Usage {#usage}

```text
{{</* icon "github" */>}}
```

[Heroicons](https://v1.heroicons.com/) v1 outline icons are available out of the box.


#### How to add your own icons {#how-to-add-your-own-icons}

Create `data/icons.yaml` file, then add your own SVG icons in the following format:

```yaml { linenos=false,filename="data/icons.yaml" }
your-icon: <svg>your icon svg content</svg>
```

It then can be used in the shortcode like this:

```text
{{</* icon "your-icon" */>}}

{{</* card icon="your-icon" */>}}
```

Tip: [Iconify Design](https://iconify.design/) is a great place to find SVG icons for your site.


## Cards {#cards}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> <!--more-->


### Example {#example}

{{< cards >}}
{{< card link="../callout" title="Callout" icon="warning" >}}
{{< card link="/" title="No Icon" >}}
{{< /cards >}}

{{< cards >}}
{{< card link="/" title="Image Card" image="https://source.unsplash.com/featured/800x600?landscape" subtitle="Unsplash Landscape" >}}
{{< card link="/" title="Local Image" image="/images/card-image-unprocessed.jpg" subtitle="Raw image under static directory." >}}
{{< card link="/" title="Local Image" image="images/space.jpg" subtitle="Image under assets directory, processed by Hugo." method="Resize" options="600x q80 webp" >}}
{{< /cards >}}


### Usage {#usage}

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


### Card Parameters {#card-parameters}

| Parameter  | Description                           |
|------------|---------------------------------------|
| `link`     | URL (internal or external).           |
| `title`    | Title heading for the card.           |
| `subtitle` | Subtitle heading (supports Markdown). |
| `icon`     | Name of the icon.                     |


### Image Card {#image-card}

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


## Tabs {#tabs}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> <!--more-->


### Example {#example}

{{< tabs items="JSON,YAML,TOML" >}}

{{< tab >}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{< /tab >}}
{{< tab >}}**YAML**: YAML is a human-readable data serialization language.{{< /tab >}}
{{< tab >}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{< /tab >}}

{{< /tabs >}}

테스트 중 입니다.

{{< tabs items="JSON,YAML,TOML" >}}
{{&lt; tab &gt;}} ****JSON****: {{&lt; /tab &gt;}} {{&lt; tab &gt;}} ****YAML****: {{&lt; /tab &gt;}} {{&lt; tab &gt;}} ****TOML****: {{&lt; /tab &gt;}}
{{< /tabs >}}


### Usage {#usage}


#### Default {#default}

```text
{{</* tabs items="JSON,YAML,TOML" */>}}

  {{</* tab */>}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{</* /tab */>}}
  {{</* tab */>}}**YAML**: YAML is a human-readable data serialization language.{{</* /tab */>}}
  {{</* tab */>}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{</* /tab */>}}

{{</* /tabs */>}}
```


#### Specify Selected Index {#specify-selected-index}

Use `defaultIndex` property to specify the selected tab. The index starts from 0.

```text
{{</* tabs items="JSON,YAML,TOML" defaultIndex="1" */>}}

  {{</* tab */>}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{</* /tab */>}}
  {{</* tab */>}}**YAML**: YAML is a human-readable data serialization language.{{</* /tab */>}}
  {{</* tab */>}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{</* /tab */>}}

{{</* /tabs */>}}
```

The `YAML` tab will be selected by default.

{{< tabs items="JSON,YAML,TOML" defaultIndex="1" >}}

{{< tab >}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{< /tab >}}
{{< tab >}}**YAML**: YAML is a human-readable data serialization language.{{< /tab >}}
{{< tab >}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{< /tab >}}

{{< /tabs >}}


#### Use Markdown {#use-markdown}

Markdown syntax including code block is also supported:

````text
{{</* tabs items="JSON,YAML,TOML" */>}}

  {{</* tab */>}}
  ```json
  { "hello": "world" }
  ```
  {{</* /tab */>}}

  ... add other tabs similarly

{{</* /tabs */>}}
````

{{< tabs items="JSON,YAML,TOML" >}}

  {{< tab >}}
  ```json
  { "hello": "world" }
  ```
  {{< /tab >}}

  {{< tab >}}
  ```yaml
  hello: world
  ```
  {{< /tab >}}

  {{< tab >}}
  ```toml
  hello = "world"
  ```
  {{< /tab >}}

{{< /tabs >}}


## Callout {#callout}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> A built-in component to show important information to the reader.

<!--more-->


### Example {#example}

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


### Usage {#usage}


#### Default {#default}

{{< callout emoji="🌐" >}}
Hugo can be used to create a wide variety of websites, including blogs,
portfolios, documentation sites, and more.
{{< /callout >}}

````text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: emoji="🌐"
#+begin_callout
Hugo can be used to create a wide variety of websites, including blogs,
portfolios, documentation sites, and more.
#+end_callout
````

````markdown
{{</* callout emoji="🌐" */>}}
  Hugo can be used to create a wide variety of websites, including blogs, portfolios, documentation sites, and more.
{{</* /callout */>}}
````


#### Info {#info}

{{< callout type="info" >}}
Please visit GitHub to see the latest releases.
{{< /callout >}}

````text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: type="info"
#+begin_callout
Please visit GitHub to see the latest releases.
#+end_callout
````

````markdown
{{</* callout type="info" */>}}
Please visit GitHub to see the latest releases.
{{</* /callout */>}}
````


#### Warning {#warning}

{{< callout type="warning" >}}
This API will be deprecated in the next version.
{{< /callout >}}

````text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: type="warning"
#+begin_callout
This API will be deprecated in the next version.
#+end_callout
````

````markdown
{{</* callout type="warning" */>}}
This API will be deprecated in the next version.
{{</* /callout */>}}
````


#### Error {#error}

{{< callout type="error" >}}
Something went wrong and it's going to explode.
{{< /callout >}}

````text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: type="error"
#+begin_callout
Something went wrong and it's going to explode.
#+end_callout
````

````markdown
{{</* callout type="error" */>}}
Something went wrong and it's going to explode.
{{</* /callout */>}}
````


## Details {#details}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> A built-in component to display a collapsible content.

<!--more-->


### Example {#example}

{{< details title="Details" >}}
This is the content of the details.

Markdown is *supported*.
{{< /details >}}

{{< details title="Click me to reveal" closed="true" >}}
This will be hidden by default.
{{< /details >}}


### Usage {#usage}


#### Org-Mode {#org-mode}

````text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: title="Details"
#+begin_details
This is the content of the details.

Markdown is *supported*.
#+end_details
````

````text { linenos=false,filename="Org-Mode" }
#+attr_shortcode: title="Click me to reveal" closed="true"
#+begin_details
This will be hidden by default.
#+end_details
````


#### Markdown {#markdown}

````markdown
{{%/* details title="Details" */%}}

This is the content of the details.

Markdown is **supported**.

{{%/* /details */%}}
````

````markdown
{{%/* details title="Click me to reveal" closed="true" */%}}

This will be hidden by default.

{{%/* /details */%}}
````


## Filetree {#filetree}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> <!--more-->


### Example {#example}

{{< filetree/container >}}
  {{< filetree/folder name="content" >}}
    {{< filetree/file name="_index.md" >}}
    {{< filetree/folder name="docs" state="closed" >}}
      {{< filetree/file name="_index.md" >}}
      {{< filetree/file name="introduction.md" >}}
      {{< filetree/file name="introduction.fr.md" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
  {{< filetree/file name="hugo.toml" >}}
{{< /filetree/container >}}


### Usage {#usage}

````text { linenos=false,filename="Markdown" }
{{</* filetree/container */>}}
  {{</* filetree/folder name="content" */>}}
    {{</* filetree/file name="_index.md" */>}}
    {{</* filetree/folder name="docs" state="closed" */>}}
      {{</* filetree/file name="_index.md" */>}}
      {{</* filetree/file name="introduction.md" */>}}
      {{</* filetree/file name="introduction.fr.md" */>}}
    {{</* /filetree/folder */>}}
  {{</* /filetree/folder */>}}
  {{</* filetree/file name="hugo.toml" */>}}
{{</* /filetree/container */>}}
````


## Steps {#steps}
<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> A built-in component to display a series of steps.

<!--more-->


### Example {#example}

{{% steps %}}

### Step 1

This is the first step.

### Step 2

This is the second step.

### Step 3

This is the third step.

{{% /steps %}}


### Usage {#usage}

Put Markdown h3 header within `steps` shortcode.

````text
{{%/* steps */%}}

### Step 1

This is the first step.

### Step 2

This is the second step.

{{%/* /steps */%}}
````
