---
layout: post
title: "Repositório remoto"
date: 2011-10-01 16:36
comments: true
categories:
- git remote
- git push
- git pull
- repository
---

> Trabalhar com um repositório remoto é uma ótima maneira de colaborar o seu código com outros desenvolvedores, trabalhar em várias máquinas e fazer backup de seu código fonte.  
> Um repositório remoto é simplesmente outro repositório, normalmente em outro servidor, que você pode empurrar (`git push`) os seus commits e puxar (`git pull`) commits dos outros.

### Adicionando um servidor remoto
---

Utilizando o projeto "Hello Word" criado no artigo [Git para iniciantes](/blog/2011/10/01/git-para-iniciantes/), vamos adicionar um repositório remoto em nossa "working tree" local.

> **Atenção:** Crie um repositório no seu servidor remoto com o commando `git init --bare`

    $ ssh user@server.com
    user@server.com's password: 
    Last login: Fri Sep 30 19:07:03 2011 from 177.32.53.79
    user@server.com [~]# mkdir -p git/hello.git
    user@server.com [~]# cd git/hello.git
    user@server.com [~]# git init --bare

Na sua máquina local:

    $ cd ~/my_app
    $ git remote add origin ssh://user@server.com/~/git/hello.git

> Você pode ter vários controles remotos e dar nomes diferentes para cada, como "palco" ou "projeto".  
> Veja todos os seus controles remotos com `git remote` ou `git remote -v`.

### Empurre seus commits para o repositório remoto

    $ git push -u origin master
    Counting objects: 3, done. 
    Writing objects: 100% (3/3), 242 bytes, done. 
    Total 3 (delta 0), reused 0 (delta 0) 
    Unpacking objects: 100% (3/3), done.
    To ssh://user@server.com/~/git/hello.git
     * [new branch]      master -> master

### Puxe as alterações do repositório de origem

É uma boa prática puxar (`git pull`) antes de empurrar (`git push`), assegurando que você tenha o código mais recente.

    $ git pull origin master

Isso irá sincronizar seu repositório local com o repositório remoto.  
Geralmente o "merge" dos repositórios ocorre sem problemas, mas às vezes pode ter alguns conflitos que deverão ser arrumados manualmente.
