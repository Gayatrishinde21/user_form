# Use the official PHP image with Apache
FROM php:7.4-apache

# Install the MySQLi extension
RUN docker-php-ext-install mysqli

# Copy the PHP files into the container
COPY index.php /var/www/html/
COPY submit.php /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html/
