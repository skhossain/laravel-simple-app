#!/bin/bash

# Only generate key if APP_KEY is empty
if [ -z "$APP_KEY" ]; then
  php artisan key:generate
  php artisan migrate
fi

# Run the main container command
exec "$@"
