#! /usr/bin/bash

#! /usr/bin/bash

ftp_user=www-data
upload_dir=wp-content/uploads

echo "Change dir ($app_dir) owner: $fpm_user"

mkdir -p "$upload_dir"
chown "$ftp_user":"$ftp_user" -R "$upload_dir"

# Run default entrypoint
exec "$@"