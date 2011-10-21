---
layout: post
title: "Git para iniciantes"
date: 2011-10-01 15:36
comments: true
categories:
- basic
- git init
- git status
- git add
- git commit
- git checkout
---

> Este artigo explica como usar o **git** via linha de comando.  
> Há alguns GUI (Interface Gráfica) para git, mas a maioria dos desenvolvedores usam a linha de comando juntamente com um visualizador de GUI para ser mais eficiente.

## O Básico
---

Se você ainda não instalou git em sua máquina, você deve ler o artigo [Instalando o Git](/blog/2011/10/01/instalando-git/).

### git init - inicializa um repositório Git

Para criar um repositório em um diretório com arquivos existentes, você pode simplesmente executar `git init` no diretório.  
Por exemplo, digamos que temos um diretório com alguns arquivos nele, assim:

    $ cd ~/my_app
    $ ls
    README   hello.rb

Este é o projeto "Hello Word" que estamos escrevendo de exemplo.  
Até agora só temos dois arquivos, mas já é um começo para iniciar o controle de versão com git.

    $ git init
    Initialized empty Git repository in ~/my_app/.git/

Agora você pode ver que há um subdiretório .git em seu projeto.  
Este é o seu repositório **Git**, onde todos os passos do seu projeto serão armazenados.

    $ ls -a
    .        ..       .git     README   hello.rb

### git add - adiciona conteúdo do arquivo para a "staging area"

No Git, você tem que adicionar o conteúdo do arquivo para "staging area" antes de comitá-los.  
Você deverá executar `git add` para adicioná-lo na sua "staging area", mesmo se o arquivo já está "tracked" - ou seja, estava no seu último "commit" - precisamos chamar `git add` para adicionar as novas modificações.

Voltando ao nosso exemplo "Hello Word", vamos adicionar os arquivos, mas antes, podemos usar `git status` para ver como está o nosso projeto.

    $ git status -s
    ?? README
    ?? hello.rb

Neste momento temos dois arquivos "untracked", ou seja, ainda não estão sendo "tracked". Vamos adicioná-los.

    $ git add README hello.rb

Também é comum adicionar recursivamente todos arquivos:

    $ git add .

Se executarmos o `git status` novamente veremos que os arquivos foram adicionados.

    $ git status -s
    A  README
    A  hello.rb

OK, vamos editar um dos arquivos e executar o `git status` de para ver o que acontece.

    $ echo "Alterei o leia isso." > README
    $ git status -s
    AM README
    A  hello.rb

O status "AM" significa que o arquivo foi modificado desde a última vez que foi adicionado.  
Isso significa que se comitarmos agora, nós gravaremos a versão do arquivo que foi adicionado pela última vez, e não a versão que está no seu disco.

### git commit - grava a versão do que foi adicionado na "staging area"

Agora que você organizou o conteúdo com o comando `git add`, execute `git commit` para realmente gravar sua versão.

    $ git add .
    $ git status -s
    A  README
    A  hello.rb
    $ git commit -m "Primeiro commit"
    [master (root-commit) f0c26a6] Primeiro commit
     2 files changed, 6 insertions(+), 0 deletions(-)
     create mode 100644 README
     create mode 100644 hello.rb

Vamos alterar o README e comitar sua nova versão.

    $ echo "Leia isso." > README
    $ git st -s
     M README
    $ git add .
    $ git ci -m "alterado o README"
    [master e4bdd45] alterado o README
     1 files changed, 1 insertions(+), 1 deletions(-)

Agora um pequeno exemplo de como reverter algumas mudanças com o `git checkout`.

Faça alguma alteração no README:

    $ echo "Agora leia isso aqui." > README
    $ git st -s
     M README

Então execute este comando:

    $ git checkout README

Abra seu editor de texto e veja que README voltou para última vez que foi comitado.

    $ cat README 
    Leia isso.

---

Estes quatro simples comandos, `git init`, `git add`, `git commit` e `git checkout` permitem que você crie um histórico do seu código e remova todos os tipos de riscos em seu fluxo de desenvolvimento.

---

Agora vamos para o [repositório remoto](/blog/2011/10/01/repositorio-remoto/).