#! /usr/bin/bash

set -e

fpm_user=www-data
wp_content_dir=wp-content
uploads_dir="$wp_content_dir"/uploads

echo "Change dir ($uploads_dir) owner: $fpm_user"

mkdir -p "$uploads_dir"
chown "$fpm_user":"$fpm_user" -R "$uploads_dir"

# Run default entrypoint
exec "$@"