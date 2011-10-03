---
layout: post
title: "Instalando Git"
date: 2011-10-01 13:36
comments: true
categories:
- projects
- git
- install
- download
---

## Mac OS X
---
Se você tem o [Homebrew](http://mxcl.github.com/homebrew/ "Homebrew") instalado, você conhece o caminho:

{% codeblock %}
$ brew install git
{% endcodeblock %}

Você também pode fazer o download do [instalador pré-compilado](http://code.google.com/p/git-osx-installer/downloads/list?can=3 "Instalador Git") e instalar o git assim como a maioria das aplicações.

## Linux / Mac
---

Se você é um geek, então baixe o [código fonte](http://git-scm.com/download) e instale o git.

## Windows
---

O mais popular jeito de rodar o git no Windows é [mysysgit](http://git-scm.com/download)

## Global settings
---

Depois de tudo instalado é a hora de definir algumas configurações globais:

{% codeblock %}
$ git config --global user.name "Nome Sobrenome"
$ git config --global user.email "email@exemplo.com"
{% endcodeblock %}

Se você pretende trabalhar com pessoas de diferentes **sistemas operacionais** todos devem definir a mesma configuração para evitar problemas maiores com o final de linha ([mais sobre o porquê](http://help.github.com/dealing-with-lineendings/)):

{% codeblock %}
$ git config --global core.autocrlf input
{% endcodeblock %}

### Plus (Global settings)

Alguns atalhos para facilitar a sua vida:

{% codeblock %}
$ git config --global alias.st status
$ git config --global alias.ci commit
$ git config --global alias.co checkout
$ git config --global alias.br branch
{% endcodeblock %}

Deixe tudo colorido:

{% codeblock %}
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
{% endcodeblock %}

---

O próximo passo é gerar uma chave SSH. Continue em [Gerando uma chave SSH](/blog/2011/10/01/gerando-uma-chave-ssh/).