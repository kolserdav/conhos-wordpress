#! /usr/bin/bash

fpm_user=www-data
app_dir="."

echo "Change app dir ($app_dir) owner: $fpm_user"

mkdir -p "$app_dir"
chown "$fpm_user":"$fpm_user" -R "$app_dir"

# Run default entrypoint
exec "$@"