FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /app/src

COPY src/ /app/src/

EXPOSE 8000

CMD ["python", "/app/src/app.py"]