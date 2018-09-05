#!/bin/bash

set -e

eval "$(jq -r '@sh "DB_SECRET_STRING=\(.db_secret_string)"')"
DB_SECRET_STRING=$(echo $DB_SECRET_STRING | tr ":" ",")
DB_SECRET_STRING=$(echo $DB_SECRET_STRING | tr "@" ",")
DB_SECRET_STRING=$(echo $DB_SECRET_STRING | tr "/" ",")
CREDS_SPACE_SEPARATED_LIST=$(echo "$DB_SECRET_STRING" | tr ',' '\n')
username="$(echo ${CREDS_SPACE_SEPARATED_LIST} | cut -d' ' -f2)"
password="$(echo ${CREDS_SPACE_SEPARATED_LIST} | cut -d' ' -f3)"
host="$(echo ${CREDS_SPACE_SEPARATED_LIST} | cut -d' ' -f4)"
jq -n '{"username":"'${username}'", "password": "'${password}'", "host": "'${host}'"}'
