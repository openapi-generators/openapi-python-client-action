FROM python:3.8

RUN python -m pip install pipx
COPY entrypoint.sh /entrypoint.sh

USER root

ENTRYPOINT ["/entrypoint.sh"]