FROM python:3.9-slim

WORKDIR /app

# Copia y instala dependencias antes de copiar el código
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar la aplicación
COPY src/ /app/src/

# Exponer el puerto 8000 (mismo que Uvicorn usa)
EXPOSE 8000

# Comando de ejecución correcto para FastAPI en producción
CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "8000"]