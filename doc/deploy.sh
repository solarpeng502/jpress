#!/usr/bin/env sh

# abort on errors
set -e

# build
vuepress build .

ossutil rm oss://jpress-doc-site/ -rf
ossutil cp -rf .vuepress/dist  oss://jpress-doc-site/