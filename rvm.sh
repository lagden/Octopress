#!/usr/bin/env sh

rvm rvmrc trust
rvm reload
gem install bundler
gem install rake
bundle install
