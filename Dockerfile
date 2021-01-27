FROM python:3.8

RUN python -m pip install --upgrade pip
RUN pip install pipx

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]