FROM python:3.8

RUN python -m pip install pipx
COPY entrypoint.sh /entrypoint.sh

USER 1001:10001

ENTRYPOINT ["/entrypoint.sh"]