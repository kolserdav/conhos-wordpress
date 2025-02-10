#! /usr/bin/bash

fpm_user=www-data
app_dir="."
git=.git

echo "Change app dir ($app_dir) owner: $fpm_user, except dir $git"

mkdir -p "$app_dir"
find "$app_dir" -path "$app_dir"/$git -prune -o -exec chown "$fpm_user":"$fpm_user" -R {} +

# Run default entrypoint
exec "$@"