---
layout: post
title: "Instalando a extensão Intl no PHP 5.3 - Mac OS X 10.7.2"
date: 2012-01-25 21:00
comments: true
categories:
- intl
- PHP
- phpize
- lion
- osx
- instalação
- extensão
---

> A extensão [Intl](http://br.php.net/manual/en/intro.intl.php) (Internationalization) é um wrapper da biblioteca [ICU](http://site.icu-project.org/).  
> É necessário ter a biblioteca ICU instalada.

### Instalando a biblioteca ICU

    mkdir -p ~/tmp && cd ~/tmp
    wget http://download.icu-project.org/files/icu4c/4.8.1.1/icu4c-4_8_1_1-src.tgz
    tar zxfv icu4c-4_8_1_1-src.tgz
    cd ~/tmp/icu/source/
    ./configure --prefix=/usr/local
    make
    sudo make install

### Instalando o intl

A instalação é semelhante ao [APC](/blog/2012/01/25/instalando-a-extenssao-apc), que está com a explicação detalhada.

    mkdir -p ~/tmp && cd ~/tmp
    wget http://pecl.php.net/get/intl-2.0.0b1.tgz
    tar zxfv intl-2.0.0b1.tgz 
    cd ~/tmp/intl-2.0.0b1 && /usr/bin/phpize
    ./configure --with-php-config=/usr/bin/php-config -enable-intl
    make
    sudo make install

### Configure seu php.ini e reinicie o seu servidor web

+ abra o arquivo: `vim /etc/php.ini`
+ coloque essa linha: `extension="intl.so"`
+ salve reinicie o seu servidor web: `sudo apachectl restart`

Para verificar se foi instalado corretamente, execute `php -i | grep intl`. Isso deverá resultar algo assim: 

    intl
    intl.default_locale => no value => no value
    intl.error_level => 0 => 0
