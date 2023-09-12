FROM python:3.7

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1

EXPOSE 5000

CMD ["python", "app.py"]