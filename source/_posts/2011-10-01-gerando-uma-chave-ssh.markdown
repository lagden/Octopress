---
layout: post
title: "Gerando uma chave SSH"
date: 2011-10-01 14:36
comments: true
categories:
- ssh
- key
- rsa
---

> Usamos as chaves SSH para estabelecer uma conexão segura entre seu computador e o servidor Git. Configurá-los é bastante fácil, mas envolve uma série de etapas.

Se você utiliza Windows abra o GitBash.

### Etapa 1. Verifique se há chaves SSH.

Você tem um par de chaves existente? Você pode pular para a **Etapa 4**.

Verifique se há chaves SSH no seu computador:

{% codeblock %}
$ cd ~/.ssh
{% endcodeblock %}

Se aparecer "Nenhum arquivo ou diretório" pule para o **Etapa 3**. Caso contrário, continue com a próxima etapa.

### Etapa 2. Faça o backup e remova a chave SSH existente.

{% codeblock %}
$ ls
config	id_rsa	id_rsa.pub	known_hosts
$ mkdir key_backup
$ cp id_rsa* key_backup
$ rm id_rsa*
{% endcodeblock %}

### Etapa 3. Gerando uma nova chave SSH.

Para gerar uma chave SSH nova, insira o código abaixo e apenas pressione **enter**.

{% codeblock %}
$ ssh-keygen -t rsa -C "email@exemplo.com"
{% endcodeblock %}

{% codeblock %}
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/your_user_directory/.ssh/id_rsa):<press enter>
Enter passphrase (empty for no passphrase):<enter a passphrase>
Enter same passphrase again:<enter passphrase again>
{% endcodeblock %}

No final deverá aparecer algo assim:

{% codeblock %}
Your identification has been saved in /Users/your_user_directory/.ssh/id_rsa.
Your public key has been saved in /Users/your_user_directory/.ssh/id_rsa.pub.
The key fingerprint is:
01:0f:f4:3b:ca:85:d6:17:a1:7d:f0:68:9d:f0:a2:db email@exemplo.com
The key's randomart image is:
+--[ RSA 2048]----+
|     .+   +      |
|       = o O .   |
|        = * *    |
|       o = +     |
|      o S .      |
|     o o =       |
|      o . E      |
|                 |
|                 |
+-----------------+
{% endcodeblock %}

### Etapa 4. Adicione sua chave SSH no servidor Git.

{% codeblock %}
$ cat ~/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAvP9QeNCEHrCdRKSlYmfY2NdBnvsK7M0lD8GQ4SLk+zc3hMAOayNw9aBsqdkEkIqjJRGKDm3NSxSlT1Q9mMCd21+b76OGswcaHBxrzxWDuyJSsKFVPKrDVUpIfYDJWqB6pdqg15HVH4LWGWvVmRRZSLVTYI6QBT8yGd4U2YxY+aF8azi8zIR0+hWQKNjDO3xyXRlLuc3Z6HBu4KOX6d8wqpO6DWuunpONj8/2ayJRbMBt2p72oBmDG3WsKQK6Nox0OSxoPK1ndXjWObFcMWx84q7w3CHTD8OrkYvdSqTo5V+DJwEAheCJqYWPXZV/MXnhYb1gKy0qPVj5uCyfqHXRHQ== email@exemplo.com
{% endcodeblock %}

Acesse seu servidor Git e edite o arquivo authorized_keys.

{% codeblock %}
$ ssh user@server.com
user@server.com's password: 
Last login: Fri Sep 30 19:07:03 2011 from 177.32.53.79
user@server.com [~]# vim .ssh/authorized_keys
{% endcodeblock %}

Adicione sua chave e salve o arquivo.

---

Caso esteja usando o [GitHub](http://github.com) como servidor, então [clique aqui](http://help.github.com/mac-set-up-git/).

---

É isso aí! Você está pronto para usar o git. Continue em [Git para iniciantes](/blog/2011/10/01/git-para-iniciantes/).