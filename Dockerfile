FROM python:3.10-alpine

WORKDIR /app
COPY . /app

RUN apk add gcc py3-cffi libffi-dev musl-dev openssl openssl-dev && \
    pip install -r requirements.txt && \
    apk del gcc libffi-dev musl-dev openssl-dev

ENV TELEGRAM_BOT_TOKEN ""
ENV TELEGRAM_BOT_CHAT_IDS ""

ENTRYPOINT ["python", "-m", "telegram_based_bot"]
