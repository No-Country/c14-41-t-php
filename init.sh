#!/bin/bash

# Espera a que el servicio de la base de datos esté disponible
while ! mysqladmin ping -h"$DB_HOST" --silent; do
    sleep 1
done

# Ejecuta las migraciones y las semillas
php artisan migrate --seed

# Inicia el servidor PHP-FPM
exec php-fpm
