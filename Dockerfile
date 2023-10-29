# Segunda etapa: configurar el entorno de ejecución
FROM docker.io/bitnami/mariadb:11.1

# Configura las variables de entorno
ENV ALLOW_EMPTY_PASSWORD=yes
ENV MARIADB_USER=bn_myapp
ENV MARIADB_DATABASE=bitnami_myapp
ENV DB_HOST=mysql
ENV DB_PORT=3306
ENV DB_USERNAME=bn_myapp
ENV DB_DATABASE=bitnami_myapp

# Establece la imagen base
FROM docker.io/bitnami/laravel:10

# Copia el código de la aplicación a la imagen
COPY ./api/take-food-backend /app

# Instala las dependencias y compila la aplicación (esto puede variar según tu aplicación)
RUN composer install 

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto
EXPOSE 8000

# Inicia tu aplicación (esto puede variar según tu aplicación)
# CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]






# # Usa una imagen de Node.js para el frontend
# FROM node:14 AS frontend
# WORKDIR /app/frontend
# COPY client/package*.json ./
# RUN npm install
# COPY client/ ./
# RUN npm run build

# # Usa una imagen de PHP para el backend
# FROM bitnami/laravel:latest AS backend
# WORKDIR /app/backend
# # RUN apt-get update && apt-get install -y \
# #     git \
# #     unzip \
# #     && docker-php-ext-install pdo_mysql
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# COPY api/take-food-backend/ /app/backend
# RUN composer install

# # Usa una imagen de MySQL para la base de datos
# FROM mysql:latest AS mysql
# ENV MYSQL_ROOT_PASSWORD=root
# ENV MYSQL_DATABASE=take_food_backend
# # COPY ./init.sql /docker-entrypoint-initdb.d/

# # EXPOSE 3306

# # Combina todo en una sola imagen
# FROM php:8.1-apache
# WORKDIR /var/www/html
# COPY --from=frontend /app/frontend/dist/ ./public
# COPY --from=backend /app/backend/ ./
# COPY --from=mysql /docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/

# # Ejecuta los comandos para configurar el backend
# # RUN php artisan migrate
# # RUN php artisan db:seed
# # RUN php artisan serve --host=0.0.0.0 --port=8000

# EXPOSE 8000

# # CMD ["mysqld"]
# CMD bash -c 'php artisan serve && /public npm run dev'
# # Comando para iniciar la aplicación Laravel
# # CMD ["php", "artisan", "serve"]