---
title: "Customization"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 3
title: Customizing Hextra
linkTitle: Customization
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> Hextra offers some default customization options in the `hugo.yaml` config file to configure the theme. This page describes the available options and how to customize the theme further.

<!--more-->


## Custom CSS {#custom-css}

To add custom CSS, we need to create a file `assets/css/custom.css` in our site. Hextra will automatically load this file.


### Font Family {#font-family}

The font family of the content can be customized using:

```css { linenos=false,filename="assets/css/custom.css" }
.content {
  font-family: "Times New Roman", Times, serif;
}
```


### Inline Code Element {#inline-code-element}

The color of text mixed with `other text` can customized with:

```css { linenos=false,filename="assets/css/custom.css" }
.content code:not(.code-block code) {
  color: #c97c2e;
}
```


### Primary Color {#primary-color}

The primary color of the theme can be customized by setting the `--primary-hue` and `--primary-saturation` variables:

```css { linenos=false,filename="assets/css/custom.css" }
:root {
  --primary-hue: 100deg;
  --primary-saturation: 90%;
}
```


### Syntax Highlighting {#syntax-highlighting}

List of available syntax highlighting themes are available at [Chroma Styles Gallery](https://xyproto.github.io/splash/docs/all.html). The stylesheet can be generated using the command:

```shell
hugo gen chromastyles --style=github
```

To override the default syntax highlighting theme, we can add the generated styles to the custom CSS file.


## Custom Scripts {#custom-scripts}

You may add custom scripts to the end of the head for every page by adding the following file:

```text
layouts/partials/custom/head-end.html
```


## Custom Layouts {#custom-layouts}

The layouts of the theme can be overridden by creating a file with the same name in the `layouts` directory of your site. For example, to override the `single.html` layout for docs, create a file `layouts/docs/single.html` in your site.

For further information, refer to the [Hugo Templates](https://gohugo.io/templates/).


## Further Customization {#further-customization}

Didn't find what you were looking for? Feel free to [open a discussion](https://github.com/imfing/hextra/discussions) or make a contribution to the theme!
