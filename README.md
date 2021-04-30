# hachiinternational.com

This repo contains the source of the Hachi International static website

### Developers

Install

```
# Requires direnv
$ brew install direnv
$ brew install rbenv
$ brew install tophat/bar/yvm
```

Development

```
# Local development localhost:4567
$ direnv allow
$ bundle install
$ yarn
$ middleman s

# Build
$ middleman build
```

Deploy to Github Pages

```
# Deploy
$ middleman deploy
```
