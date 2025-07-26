# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
COPY model/train_model.py model/train_model.py
COPY app/ app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Train and save model
RUN python model/train_model.py

# Default command
CMD ["python", "app/predict.py"]

