# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Flask and Docker SDK for Python
RUN pip install flask docker

# Copy the current directory contents into the container
COPY . /app

# Expose port 5000
EXPOSE 5001

# Run the Flask application
CMD ["python", "app.py"]