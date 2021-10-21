FROM python:3.8-alpine
ADD . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["gunicorn", "--log-level", "debug", "api:app"]