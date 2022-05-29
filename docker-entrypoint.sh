#!/bin/sh

set -e

export DATABASE_URL=$(/get-qovery-env.sh POSTGRESQL ${PGSQL_ID} DATABASE_URL_INTERNAL)

defined_envs=$(printf '${%s} ' $(env | cut -d= -f1))
envsubst "$defined_envs" < "/vault/config/config.hcl.template" > "/vault/config/config.hcl"

docker-entrypoint.sh vault server -config /vault/config/config.hcl
