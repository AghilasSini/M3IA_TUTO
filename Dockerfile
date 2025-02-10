# Use a lightweight Python image
FROM python:3.11-slim

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn
# Copy the application code
COPY main.py /app/main.py
# Set the working directory to /app
WORKDIR /app

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]