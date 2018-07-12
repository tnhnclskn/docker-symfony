#!/usr/bin/env bash

if [ "$1" = 'php-fpm' ]; then
  exec "$@"
else
  exec php "$@"
fi
