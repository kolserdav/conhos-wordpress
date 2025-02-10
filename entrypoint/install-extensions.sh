#! /usr/bin/bash

if ! php -m | grep -q 'mysqli'; then
    echo 'Installing "mysqli" extension ...'
    docker-php-ext-install mysqli && docker-php-ext-enable mysqli
else
    echo '"mysqli" extension is already installed!';
fi

if ! php -m | grep -q 'gd'; then
    echo 'Installing "gd" extension ...'
    docker-php-ext-install gd && docker-php-ext-enable gd
else
    echo '"gd" extension is already installed!';
fi

# Run default entrypoint
exec "$@"