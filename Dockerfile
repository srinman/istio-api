# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install flask

# Make port 9080 available to the world outside this container
EXPOSE 9080

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]