# # Use the official Python image as base
# FROM python:3.9-slim

# # Set the working directory in the container
# WORKDIR ./new_notebook
# # Copy the local contents to the container
# COPY . .

# # Install make and other dependencies
# RUN apt-get update && \
#     apt-get install -y make && \
#     pip install --upgrade pip && \
#     pip install -r requirements.txt

# # Expose the port on which your Flask app will run
# EXPOSE 5000

# # Command to run your Flask application
# CMD ["make", "run"]


# Use the official Python image as base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local contents to the container
COPY . .

# Install other dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose the port on which your Flask app will run
EXPOSE 5000

# Command to run your Flask application
CMD ["python", "main.py"]
