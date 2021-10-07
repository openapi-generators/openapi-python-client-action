FROM python:3.9-slim

RUN python -m pip install --upgrade pip

# Sets the user to the same user that the workflow runner uses so that it can access the generated client
USER 1001

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]