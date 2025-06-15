# Imagen base
FROM python:3.9-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar los archivos
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Comando de inicio
CMD ["python", "app.py"]
