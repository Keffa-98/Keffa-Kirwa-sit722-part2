# Dockerfile for book_catalog microservice
FROM python:3.9.20-slim

WORKDIR /usr/src/book_catalog

COPY book_catalog/requirements.txt .
 
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY book_catalog/ .

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
