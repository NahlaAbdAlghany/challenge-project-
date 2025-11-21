FROM python:3.11-slim

WORKDIR /app
RUN groupadd -r appuser && useradd -r -g appuser appuser
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
#COPY --chown=appuser:appuser . .
#USER appuser
EXPOSE 80
CMD [ "python", "app.py" ] 


