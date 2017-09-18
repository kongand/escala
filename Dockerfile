# Use official php runtime as parent image
FROM php:7.0-cli

# Install composer and zip tools required by composer
RUN apt-get update && \
    apt-get install -y zlib1g-dev curl && \
    docker-php-ext-install zip && \
    curl -sS https://raw.githubusercontent.com/composer/getcomposer.org/fd53adb291d7a0e4a6003e242fde093483f4e084/web/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the current directory contents into the container at /escala
COPY . /escala

# Create a non-root user && provide ownership of /escala to nonroot user.
# We do this because it's unsafe to run composer install as root. More info: 
# https://getcomposer.org/doc/faqs/how-to-install-untrusted-packages-safely.md
RUN useradd -ms /bin/bash nonroot && chown -R nonroot /escala

# Switch to nonroot user
USER nonroot

# Set the working directory to /escala
WORKDIR /escala

# Install dependencies
RUN composer install

# Changing user in order to serve the application as root
USER root

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the php server when the container launches
CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
