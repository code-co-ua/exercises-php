[![Build Status](https://travis-ci.com/code-co-ua/exercises-php.svg?branch=master)](https://travis-ci.com/code-co-ua/exercises-php)
[![Telegram chat](https://img.shields.io/badge/chat-telegram-blue.svg)](https://t.me/codecoua)

## Build images

We need images to run new instances.

```bash
make build-images
```

## Launch a new instance

```bash
make launch-instance exercise=hello-world
```

It will return something like:

```
436c5da49a7d00f8efcfcbeb8b97e518ce0afc12e33fed6eaa6f8b286c0b663b
```

(docker container id)
