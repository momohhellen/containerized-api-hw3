FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY api ./api
COPY docker-entrypoint.sh .

EXPOSE 9000

ENTRYPOINT ["./docker-entrypoint.sh"]
