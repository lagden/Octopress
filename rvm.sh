#!/usr/bin/env sh

# rvmsudo rvm rvmrc trust
# rvmsudo rvm reload
rvmsudo gem install bundler
rvmsudo gem install rake
rvmsudo bundle install
