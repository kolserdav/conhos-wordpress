#! /usr/bin/bash

set -e

fpm_user=www-data
upload_dir=wp-content/uploads

echo "Change dir ($app_dir) owner: $fpm_user"

mkdir -p "$upload_dir"
chown "$fpm_user":"$fpm_user" -R "$upload_dir"

# Run default entrypoint
exec "$@"