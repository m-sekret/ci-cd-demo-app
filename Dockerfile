# Використовуйте офіційний образ Python
FROM python:3.9-slim

# Встановлення залежностей
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Копіювання коду застосунку
COPY . .

# Запуск застосунку
CMD ["python", "app.py"]

