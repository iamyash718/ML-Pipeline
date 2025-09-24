# Use official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt first
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files into container
COPY . .

# Expose port 5000 (for Flask API)
EXPOSE 5000

# Default command (can be changed later)
CMD ["python", "RajFullPracticalCode.ipynb"]
