# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
# First, create a requirements.txt in your app/ directory
# with 'Flask' and 'prometheus_client'
COPY app/requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY app/ .

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "app.py"]