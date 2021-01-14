FROM python:3.8

RUN python -m pip install pipx
COPY entrypoint.sh /entrypoint.sh

USER 1000:1000

ENTRYPOINT ["/entrypoint.sh"]