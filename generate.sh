#!/bin/sh
set -e

# cleanup
rm -rf .jekyll-cache _site

# build site
if [ -t 0 ] ; then
    bundle exec jekyll serve
else
    bundle exec jekyll build
fi

