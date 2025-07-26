# ========================
# Stage 1: PHP Dependencies
# ========================
FROM composer:2.8.10 AS composer
WORKDIR /var/www
COPY . .

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader --no-interaction


# ========================
# Stage 2: Node Build
# ========================
FROM node:22.17.1-bookworm AS nodebuilder
WORKDIR /var/www

# install dependencies
COPY . .
RUN npm install --no-audit --no-fund
RUN npm run build

# ========================
# Stage 3: Final Image
# ========================
FROM php:8.3-fpm-alpine

# Install system dependencies
RUN apk add --no-cache \
    bash \
    curl \
    git \
    unzip \
    libzip-dev \
    zip \
    nginx \
    oniguruma-dev \
    mysql-client \
    icu-dev \
    libpng \
    libpng-dev \
    libjpeg-turbo-dev

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql zip intl

# Set working directory
WORKDIR /var/www

# Copy Laravel app & vendor dependencies from Composer stage
COPY --from=composer /var/www /var/www

# Copy built frontend assets from Node stage
COPY --from=nodebuilder /var/www/public /var/www/public

# Set file ownership to web server user
RUN chown -R www-data:www-data /var/www && chmod -R 775 storage bootstrap/cache


# Copy entrypoint script
COPY docker/php/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 9000
CMD ["php-fpm"]
