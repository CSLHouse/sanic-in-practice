FROM python:3.7

WORKDIR /app

COPY sources.list /etc/apt/
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

VOLUME [ "/data" ]
EXPOSE 8000
CMD ["python", "-u", "-m", "weiguan.api.app"]