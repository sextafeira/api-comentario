FROM python:3.8-alpine
ADD . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8000", "--log-level", "debug", "api:app"]