---
title: "Organize Files"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 1
prev: /docs/orghextra/guide
---

<mark>exported by orghextra on Org_Mode &amp; Emacs</mark> Explore the following sections to learn how to use Hextra:

<!--more-->


## Directory Structure {#directory-structure}

By default, Hugo searches for Markdown files in the `content` directory, and the structure of the directory determines the final output structure of your website. Take this site as an example:

<!--more-->

{{< filetree/container >}}
  {{< filetree/folder name="content" >}}
    {{< filetree/file name="_index.md" >}}
    {{< filetree/folder name="docs" state="open" >}}
      {{< filetree/file name="_index.md" >}}
      {{< filetree/file name="getting-started.md" >}}
      {{< filetree/folder name="guide" state="open" >}}
        {{< filetree/file name="_index.md" >}}
        {{< filetree/file name="organize-files.md" >}}
      {{< /filetree/folder >}}
    {{< /filetree/folder >}}
    {{< filetree/folder name="blog" state="open" >}}
      {{< filetree/file name="_index.md" >}}
      {{< filetree/file name="post-1.md" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
{{< /filetree/container >}}

Each of the `_index.md` files is the index page for the corresponding section. The other Markdown files are regular pages.

```text
content
├── _index.md // <- /
├── docs
│   ├── _index.md // <- /docs/
│   ├── getting-started.md // <- /docs/getting-started/
│   └── guide
│       ├── _index.md // <- /docs/guide/
│       └── organize-files.md // <- /docs/guide/organize-files/
└── blog
    ├── _index.md // <- /blog/
    └── post-1.md // <- /blog/post-1/
```


## Layouts {#layouts}

Hextra offers three layouts for different content types:

| Layout    | Directory             | Features                                                         |
|-----------|-----------------------|------------------------------------------------------------------|
| `docs`    | `content/docs/`       | Ideal for structured documentation, same as this section.        |
| `blog`    | `content/blog/`       | For blog postings, with both listing and detailed article views. |
| `default` | All other directories | Single-page article view without sidebar.                        |

To customize a section to mirror the behavior of a built-in layout, specify the desired type in the front matter of the section's `_index.md`.

```yaml
---
title: My Docs
cascade:
  type: docs
---
```

The above example configuration ensures that the content files inside `content/my-docs/` will be treated as documentation (`docs` type) by default.


## Sidebar Navigation {#sidebar-navigation}

The sidebar navigation is generated automatically based on the content organization alphabetically. To manually configure the sidebar order, we can use the `weight` parameter in the front matter of the Markdown files.

```yaml
---
title: Guide
weight: 2
---
```

{{&lt; callout emoji="ℹ️"&gt;}} It is recommended to keep the sidebar not too deep. If you have a lot of content, consider **splitting them into multiple sections**. {{&lt; /callout &gt;}}


## Configure Content Directory {#configure-content-directory}

By default, the root `content/` directory is used by Hugo to build the site. If you need to use a different directory for content, for example `docs/`, this can be done by setting the [`contentDir`](https://gohugo.io/getting-started/configuration/#contentdir) parameter in the site configuration `hugo.yaml`.


## Add Images {#add-images}

To add images, the easiest way is to put the image files in the same directory as the Markdown file. For example, add an image file `image.png` alongside the `my-page.md` file:

{{< filetree/container >}}
  {{< filetree/folder name="content" >}}
    {{< filetree/folder name="docs" >}}
        {{< filetree/file name="my-page.md" >}}
        {{< filetree/file name="image.png" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
{{< /filetree/container >}}

Then, we can use the following Markdown syntax to add the image to the content:

```markdown
![](image.png)
```

We can also utilize the [page bundles](https://gohugo.io/content-management/page-bundles/#leaf-bundles) feature of Hugo to organize the image files together with the Markdown file. To achieve that, turn the `my-page.md` file into a directory `my-page` and put the content into a file named `index.md`, and put the image files inside the `my-page` directory:

{{< filetree/container >}}
  {{< filetree/folder name="content" >}}
    {{< filetree/folder name="docs" >}}
        {{< filetree/folder name="my-page" >}}
            {{< filetree/file name="index.md" >}}
            {{< filetree/file name="image.png" >}}
        {{< /filetree/folder >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
{{< /filetree/container >}}

```markdown
![](image.png)
```

Alternatively, we can also put the image files in the `static` directory, which will make the images available for all pages:

{{< filetree/container >}}
  {{< filetree/folder name="static" >}}
    {{< filetree/folder name="images" >}}
        {{< filetree/file name="image.png" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
  {{< filetree/folder name="content" >}}
    {{< filetree/folder name="docs" >}}
        {{< filetree/file name="my-page.md" >}}
    {{< /filetree/folder >}}
  {{< /filetree/folder >}}
{{< /filetree/container >}}

Note that the image path begins with a slash `/` and is relative to the static directory:

```markdown
![](/images/image.png)
```
