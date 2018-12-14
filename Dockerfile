# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /opt/dockerAPP

# Copy the current directory contents into the container at /app
COPY . /opt/dockerAPP

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME Devsu

# Run app.py when the container launches
CMD ["python", "webapp03.py"]
