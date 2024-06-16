# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory
WORKDIR /usr/src/app

# Install curl
RUN apt-get update && apt-get install -y curl
# Update package list and install iputils-ping
RUN apt-get update && \
    apt-get install -y iputils-ping && \
    rm -rf /var/lib/apt/lists/*

# Copy the script into the container
COPY test_script.sh .

# Run the script when the container launches
CMD ["sh", "test_script.sh"]

