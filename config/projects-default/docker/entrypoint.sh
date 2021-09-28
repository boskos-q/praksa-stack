#!/bin/sh

set -e

echo "Starting Container"

#chmod +x /app/bin/console

#if [ "$APP_ENV" != 'prod' ]; then
#    composer install --ignore-platform-req=php --prefer-dist --no-progress --no-interaction --no-scripts
#fi

# cache:clear creates the correct folders in var/
# run cache:clear with composer
#composer run-script post-install-cmd

mkdir -p /app/var/cache/"$APP_ENV" /app/var/log
chmod -R 777 /app/var

# if CMD is use exec command
if [ "${1#-}" != "" ]; then
    echo "Running Command $@"
	exec "$@"
	exit 0
fi

# If we are in the development env, run migrations
echo "App ENV: ${APP_ENV}"
echo "Local VM: ${LOCAL_VM}"
echo "Debug: ${APP_DEBUG}"
echo "Starting Application"

/usr/bin/supervisord -n -c /etc/supervisord.conf
