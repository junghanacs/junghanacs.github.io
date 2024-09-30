---
title: "Tabs"
author: ["Junghan Kim"]
date: 2024-04-30T07:16:00+09:00
keywords: ["docs", "hugo", "menu"]
draft: false
weight: 7
next: /docs/ox-hugo/guide/deploy-site
---

<mark>exported by ox-hugo on Org_Mode &amp; Emacs</mark> <!--more-->


## Example {#example}

{{< tabs items="JSON,YAML,TOML" >}}

{{< tab >}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{< /tab >}}
{{< tab >}}**YAML**: YAML is a human-readable data serialization language.{{< /tab >}}
{{< tab >}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{< /tab >}}

{{< /tabs >}}

테스트 중 입니다.

{{< tabs items="JSON,YAML,TOML" >}}
{{&lt; tab &gt;}} ****JSON****: {{&lt; /tab &gt;}} {{&lt; tab &gt;}} ****YAML****: {{&lt; /tab &gt;}} {{&lt; tab &gt;}} ****TOML****: {{&lt; /tab &gt;}}
{{< /tabs >}}


## Usage {#usage}


### Default {#default}

```text
{{</* tabs items="JSON,YAML,TOML" */>}}

  {{</* tab */>}}**JSON**: JavaScript Object Notation (JSON) is a standard text-based format for representing structured data based on JavaScript object syntax.{{</* /tab */>}}
  {{</* tab */>}}**YAML**: YAML is a human-readable data serialization language.{{</* /tab */>}}
  {{</* tab */>}}**TOML**: TOML aims to be a minimal configuration file format that's easy to read due to obvious semantics.{{</* /tab */>}}

{{</* /tabs */>}}
```


### Specify Selected Index {#specify-selected-index}

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


### Use Markdown {#use-markdown}

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
