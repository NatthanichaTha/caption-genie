FROM python

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app/src
COPY src /app/src/
CMD ["python", "main.py"]