FROM python:3.8.5-slim-buster

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]