#!/usr/bin/env bash

if [ "$1" = 'php-fpm' ]; then
  if [ -e fpmstart-before.sh ]; then
    /usr/bin/env bash fpmstart-before.sh
  fi
  exec "$@"
else
  exec php "$@"
fi
