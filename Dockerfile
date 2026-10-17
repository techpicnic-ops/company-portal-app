FROM python:3.10-slim
WORKDIR /app2
COPY . .
RUN pip install flask requests
RUN apt-get update && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*
CMD ["python", "app.py"]
