---
layout: post
title: "Instalando a extensão APC no PHP 5.3 - Mac OS X 10.7.2"
date: 2012-01-25 21:00
comments: true
categories:
- APC
- PHP
- phpize
- lion
- osx
- instalação
- extensão
---

> A extensão APC (Alternative PHP Cache) é livre e aberta. Seu objetivo é fornecer um framework robusto para cache e otimização do código PHP.

### Instalando o APC

Abra o terminal e faça o seguinte:

#### 1. Baixe a última versão

    mkdir -p ~/tmp && cd ~/tmp
    wget http://pecl.php.net/get/APC-3.1.9.tgz
    tar zxfv APC-3.1.9.tgz
    cd APC-3.1.9

#### 2. Execute o phpize

phpize é um script que pode ter sido instalado com o PHP. No meu caso, que utilizo PHP que já vem instalado com OS X 10.7, é localizado no `/usr/bin/`.

    cd ~/tmp/APC-3.1.9
    /usr/bin/phpize

#### 3. Execute o script de configuração.

A única opção que você precisa especificar é a localização do seu script php-config. (Talvez você possa usar `which php-config` para localizá-lo)

    ./configure --with-php-config=/usr/bin/php-config --enable-apc

#### 4. Compile e instale

    make
    sudo make install

#### 5. Configure seu php.ini e reinicie o seu servidor web

+ abra o arquivo: `vim /etc/php.ini`
+ coloque essa linha: `extension="apc.so"`
+ salve reinicie o seu servidor web: `sudo apachectl restart`

Para verificar se foi instalado corretamente, execute `php -i | grep apc`. Isso deverá resultar algo assim:

    apc
    apc.cache_by_default => On => On
    apc.canonicalize => On => On
    apc.coredump_unmap => Off => Off
    apc.enable_cli => Off => Off
    apc.enabled => On => On
    .
    .
    .
