#!/usr/bin/env bash

set -e

envsubst "$(printf '${%s}' ${!MYSQL_*})" \
    < "/00-environment.cnf" \
    > "/etc/mysql/conf.d/00-environment.cnf"

exec docker-entrypoint.sh "$@"
