FROM python:3.8

RUN python -m pip install pipx

ENTRYPOINT: ["entrypoint.sh"]