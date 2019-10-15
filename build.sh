#!/bin/sh

rm -rf docs _site
bundle exec jekyll build
mv _site docs
