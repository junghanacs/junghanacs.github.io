---
title: "Getting Started With Vanilla GNU Emacs"
author: ["Junghan Kim"]
isCJKLanguage: "t"
draft: false
weight: 3
title: Getting Started With Vanilla GNU Emacs 이맥스 시작하기
linkTitle: "GNU 이맥스 시작하기"
---

<!--more-->

작업 중입니다.

<a class="org-gls" href="#gls.1" id="glsr.1.1">이맥스</a>

이제 Emacs를 설치하고 사용할 차례입니다. 이 장에서는 아무런 설정 없이 Emacs를 사용하는 방법을 처음으로 소개합니다(바닐라 Emacs라고도 함). 이러한 기본 기술은 이 책의 나머지 부분에서 고급 기능을 소개할 때 유용합니다.

Emacs의 설치 과정은 운영 체제에 따라 다릅니다. GNU Emacs 웹사이트(`emacs.org`)에는 가장 일반적인 운영 체제에서 Emacs를 설치하는 방법에 대한 지침이 나와 있습니다. 이 글을 쓰는 시점에서 최신 버전의 Emacs가 필요합니다(현재 버전은 29). Windows에서는 Emacs 및 필요한 모든 소프트웨어를 설치하는 것이 Linux나 Mac OS에 비해 조금 더 복잡합니다. 이 운영 체제에 추가 소프트웨어를 설치하는 방법에 대한 지침은 Emacs Writing Studio 웹 사이트에서 확인할 수 있습니다.

소프트웨어를 설치했으면 이제 Emacs를 열고 둘러볼 차례입니다. 가장 먼저 나타나는 것은 도움말 파일 및 기타 정보에 대한 링크가 있는 시작 화면입니다(그림 [Figure 1](#figure--fig-splash)). 링크를 클릭하여 튜토리얼을 읽거나 `q` 버튼을 눌러 화면을 닫습니다(Emacs에서는 '종료'를 의미). `q` 를 누르는 것이 읽기 전용 화면을 종료하는 표준 방법입니다.

<a class="org-gls" href="#gls.2" id="glsr.2.1">스플래시</a> 화면이 닫히면 임시 노트에 사용할 수 있는 '<a class="org-gls" href="#gls.3" id="glsr.3.1">스크래치 버퍼</a>'로 들어갑니다. Emacs 용어로, 버퍼는 파일에 연결할 수 있는 콘텐츠를 보관하는 컴퓨터 메모리 영역입니다. 따라서 버퍼는 문서의 동적 버전이며, 버퍼를 연결된 파일에 저장할 때까지 파일은 변경되지 않습니다. 프로그램을 종료할 때 스크래치 버퍼의 내용은 저장되지 않으므로 아직 글쓰기를 시작하지 마세요.

<a id="figure--fig-splash"></a>

{{< figure src="/images/splash-screen.png" alt="Emacs 29 splash screen" caption="<span class=\"figure-number\">Figure 1: </span>Emacs 29.1 splash screen." title="Emacs 29 splash screen" width="500" >}}


## Emacs quickstart guide 이맥스 퀵스타트 가이드 {#sec-quickstart}

Emacs에 대해 많이 알 필요 없이 바로 사용할 수 있습니다. 다른 사람들이 생각하는 것보다 훨씬 직관적으로 작동합니다. 먼저 조직 문서를 작성하고 웹 페이지로 내보내서 시작해 보겠습니다.

<a class="org-gls" href="#gls.4" id="glsr.4.1">메뉴바</a>에서 _File_ &gt; _Visit New File_ 을 선택하고 디렉터리를 선택한 다음 `.org` 확장자를 가진 파일 이름을 입력합니다(예: `test.org`). 파일 방문은 파일을 버퍼로 읽어들이기 위한 Emacs 용어입니다. 이 파일은 특수한 유형의 일반 텍스트 파일인 <a class="org-gls" href="#gls.5" id="glsr.5.1">조직 모드</a>:가 됩니다. 이제 다른 텍스트 소프트웨어에서 일반적으로 하는 것처럼 입력을 시작합니다.

Org 구문을 사용하여 문서에 구조와 메타데이터를 추가할 수도 있습니다. 예를 들어, 문서 제목을 정의하는 첫 줄에 `#+title: Hello World` 를 추가합니다. 제목을 삽입하려면 `* Chapter` 과 같이 별표 하나로 한 줄을 시작하세요. 별표를 두 개 이상 사용하면 부제목이 만들어집니다.

```text
#+title: Hello World

* Chapter
Dolor sit amet, consectetur adipiscing elit. Nulla varius imperdiet malesuada.

** Section
Nullam ut consequat lacus. Praesent porttitor urna eget semper vestibulum.
```

이 두 줄이 일반 텍스트와 다른 색으로 표시되어 있는 것을 볼 수 있습니다. 이 색상은 텍스트의 실제 색상이 아니라 일반 단락이 아님을 나타내는 의미적 힌트입니다. 이러한 색상은 문서를 빠르게 스캔하는 데 도움이 됩니다. 이제 제목 아래에 일반 텍스트를 추가합니다. 마지막으로 _File_ &gt; _Save_ 으로 결과를 저장합니다. 이제 Emacs에서 첫 번째 문서를 작성했습니다. 이제 파일은 다음과 같이 보일 것입니다:

Emacs가 화면 경계에서 긴 문장을 줄 바꿈하지 않는다고 해도 걱정하지 마세요. 기본 설정일 뿐이니까요. 메뉴 막대로 이동하여 _Options_ &gt; _<a class="org-gls" href="#gls.6" id="glsr.6.1">Line Wrapping</a> in This Buffer_ &gt; _<a class="org-gls" href="#gls.7" id="glsr.7.1">Word Wrap</a> (Visual Line Mode)_ 을 선택하면 쉽게 변경할 수 있습니다. 이제 Emacs는 익숙한 글쓰기 소프트웨어처럼 작동합니다.

다음으로 이 간단한 예제를 웹 페이지로 내보냅니다. <a class="org-gls" href="#gls.8" id="glsr.8.1">조직모드</a>:는 _<a class="org-gls" href="#gls.9" id="glsr.9.1">What You See is What You Mean</a>_ 시스템이므로 화면에서 텍스트가 표시되는 방식이 최종 게시된 결과물에 표시되는 방식과 반드시 일치하지는 않습니다. <a class="org-gls" href="#gls.8" id="glsr.8.2">조직모드</a>:는 문서를 내보낼 때 일종의 템플릿을 사용하여 <a class="org-gls" href="#gls.10" id="glsr.10.1">구문</a>:을 원하는 타이포그래피 디자인으로 변환 합니다. 이러한 템플릿은 웹페이지의 경우 CSS(Cascading Style Sheet)를 사용합니다.

따라서 `#+title:` 줄에 있는 텍스트는 문서의 제목이 되고, 별표로 하나 이상 시작하는 줄은 제목이 됩니다. 내보내기 모듈은 이러한 키워드를 관련 출력으로 변환합니다. 이후 장에서는 이미지, 표 수식 및 기타 아티팩트를 추가하는 다른 구문들을 소개합니다.

가장 간단한 방법은 웹페이지를 만드는 것입니다. _Org_ 메뉴에서 _Export/Publish_ 를 선택하고 `h` 및 `o` 키를 입력합니다. Org는 문서를 HTML 파일로 변환하고 기본 브라우저를 열어 결과를 표시합니다.

여기까지가 Emacs 조직 모드에서 문서를 작성하고 게시하는 기본적인 워크플로우입니다. 이 외에도 훨씬 더 많은 기능이 있으며, Emacs에는 원하는 대로 문서를 만들 수 있는 수많은 플러그인과 미세-조정 옵션이 있습니다.


## Working with the keyboard 키보드로 일하기 {#working-with-the-keyboard-키보드로-일하기}

Emacs는 대체로 키보드 중심의 응용 프로그램입니다. 이전 섹션에서 설명한 것처럼 가끔씩 마우스와 메뉴 막대를 사용할 수는 있지만, 이러한 주변기기를 사용할 필요는 없습니다. 키보드와 마우스 중 어느 것을 사용하는 것이 가장 효율적인지에 대한 공식적인 합의는 없지만(Tognazzini 1992; Omanson et al. 2010), 대부분의 Emac 사용자는 키보드를 사용하는 것을 선호합니다.

메뉴 표시줄에서 아이콘을 클릭하는 것이 일련의 키 입력을 기억하는 것보다 뇌의 용량을 덜 필요로 하는 것처럼 보일 수 있습니다. 하지만 아이콘 표시줄의 실질적인 문제는 사용 가능한 모든 기능을 담을 공간이 부족하다는 것입니다. 키보드 단축키는 <a class="org-gls" href="#gls.11" id="glsr.11.1">근육 기억</a>의 일부가 되기 때문에 기억하기 쉽습니다.

마우스 대신 키보드 단축키를 사용하면 두 입력 장치 사이에서 주기적으로 손을 움직일 수 없습니다. 예를 들어, 일반적인 워드 프로세서에서 단어의 철자가 틀린 경우 키보드에서 마우스로 손을 이동하고 커서를 틀린 단어로 이동한 다음 마우스를 클릭하고 원하는 철자를 선택합니다. Emacs에서는 한 번의 키 입력으로 오타를 수정하고 계속 글을 쓸 수 있습니다.

키보드와 마우스 논쟁에서 기억해야 할 가장 중요한 점은 글쓰기는 분당 단어를 내리치는 것보다 사고하는 것이 더 중요하므로 마우스를 사용하는 것이 죄가 아니라는 것입니다. 텍스트 선택이나 커서 이동과 같은 일부 작업에는 Emacs에서 마우스를 사용할 수 있습니다. 메뉴 시스템의 가장 큰 장점은 Emacs에서 기능을 찾는 데 도움이 된다는 점이지만 메뉴에 액세스하는 데 마우스가 필요하지 않습니다. `F10`:을 누르고 화살표 키를 사용하여 드롭다운 메뉴를 탐색하여 Emacs의 기능을 찾습니다.

