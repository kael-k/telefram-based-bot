# Telegram Based Bot
[![Python 3.10](https://img.shields.io/badge/python-3.10-blue?style=flat-square&logo=python)](LICENSE)
[![GPLv3 License](https://img.shields.io/badge/license-GPLv3-green?style=flat-square&logo=legal)](LICENSE)
[![Code style: black](https://img.shields.io/badge/black-v22.3.0-orange?style=flat-square)](https://github.com/psf/black)
[![Code style: mypy](https://img.shields.io/badge/mypy-v0.950-orange?style=flat-square)](https://github.com/python/mypy)
[![Code style: flake8](https://img.shields.io/badge/flake8-3.9.0-orange?style=flat-square)](https://github.com/PyCQA/flake8)


A Telegram bot that send a random gif/message/image of chad if a `based` or `chad` word is detected.

An already built container image is available on [Docker Hub](https://hub.docker.com/r/kaelk/telegram-based-bot).

## Usage
First, you'll need to setup a bot on telegram https://core.telegram.org/bots#3-how-do-i-create-a-bot.

After you generated the token, you can run the software via podman/docker (or your preferred container runtime):
```
podman run \
    -e TELEGRAM_BOT_TOKEN="<my-sercet-token>" \
    -e TELEGRAM_BOT_CHAT_IDS="[<chatid1>[;<chatid2>;<...>;<chatidn>]]" \
    -e ENABLE_DEBUG "(0|1)" \
    kaelk/telegram-based-bot
```

* `ENABLE_DEBUG` by default is "0", i you do not need debug you can omit the env
* also `TELEGRAM_BOT_CHAT_IDS` is optional, however this means that **EVERYONE** can send a message to the bot
and they will **ALL** be processed

## Build

### Container

To build the bot in container:
```
podman build . -t telegram-based-bot
```

### Source
All dependencies are listed in `requirements.txt`.
If you want to contribute, you'll also need to install `pre-commit` to check the code quality.
