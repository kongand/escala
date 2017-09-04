# Use official php runtime as parent image
FROM php:7.0-cli

# Copy the current directory contents into the container at /escala
COPY . /escala

# Set the working directory to /escala
WORKDIR /escala

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the php server when the container launches
CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
