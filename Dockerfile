FROM python:3.9-alpine
LABEL Maintainer="LRVT"

COPY . /app

WORKDIR /app
ENTRYPOINT [ "python", "shcheck.py"]

CMD [ "python", "shcheck.py", "--help"]
