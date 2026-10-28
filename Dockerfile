# Используем официальный легкий образ Python
FROM python:3.11-slim

# Рабочая папка внутри контейнера
WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код приложения
COPY app.py .

# Указываем порт, который слушает приложение
EXPOSE 5000

# Команда для запуска приложения
CMD ["python", "app.py"]
