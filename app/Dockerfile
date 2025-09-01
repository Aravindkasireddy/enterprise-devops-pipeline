# Trigger pipeline run to refresh CI/CD badge
# Use official Python image
FROM python:3.9-slim

# Set workdir
WORKDIR /app

# Copy requirements & install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY . .

# Expose app port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
