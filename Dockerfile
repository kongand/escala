# Use official php runtime as parent image
FROM php:7.0-cli

# Download and install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

# Make composer globally available
RUN mv composer.phar /usr/local/bin/composer

# Copy the current directory contents into the container at /escala
COPY . /escala

# Set the working directory to /escala
WORKDIR /escala

# Install dependencies
RUN composer install

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the php server when the container launches
CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
