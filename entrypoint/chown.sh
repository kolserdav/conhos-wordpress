#! /usr/bin/bash

set -e

fpm_user=www-data
app_dir="."
git_dir=.git

echo "Change app dir ($app_dir) owner: $fpm_user, except dir $gigit_dirt"

git_owner=$(stat -c "%U:%G" "$app_dir/$git_dir")

mkdir -p "$app_dir"
chown "$fpm_user":"$fpm_user" -R $app_dir
# Chown git owner back, else git runner won't work
chown "$git_owner":"$git_owner" -R "$app_dir/$git_dir"

# Run default entrypoint
exec "$@"