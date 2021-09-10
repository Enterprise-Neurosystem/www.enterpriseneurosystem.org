# Enterprise Neurosystem Website

This is the source code for the www.enterpriseneurosystem.org website.

## Build

First, a few development libraries and tools are needed. On Red Hat system:

    dnf install -y ruby-devel rubygems-devel gcc-c++ curl-devel rubygem-bundler patch zlib-devel redhat-rpm-config openssl nodejs ImageMagick make librsvg2-tools

or on Debian:

    apt install -y build-essential ruby-bundler libcurl4-openssl-dev zlib1g-dev ruby-dev nodejs imagemagick librsvg2-bin

Then, install the necessary Ruby gems:

    bundle install

And you simply need to run this script to generate the site:

    `generate.sh`

If run interractively the script will enable Jekyll's web server to test the site locally.

## Customization

The theme is based on the `minima` theme and try to minimize the difference.
It is an imperfect port of our osci,io site's theme (original theme courtesy of Tuomas Kuosmanen).

### Pages

The `minima` theme [defines a list of overridable layouts and includes](https://github.com/jekyll/minima/#customizing-templates).
We currently define these:

- `custom-head.html`: add favicon headers
- `footer.html`: mimic the footer on osci.io

### Style

Styles should be defined in `_sass/minima/custom-styles.scss` or included from it.

Variables are separated in `_sass/minima/custom-variables.scss` to differenciate parameters
meant to be twaeked. It is also necessary to override values form the base theme.

The bootstrap is done in `assets/css/style.scss` and should not be modified unless you need
to access site veriables since files in `_sass/` are not templated.
