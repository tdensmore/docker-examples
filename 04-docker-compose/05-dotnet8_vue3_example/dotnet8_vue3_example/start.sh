#!/usr/bin/env bash

# Ask the user for mssql password
read -sp 'Password: ' PASSWORD

# set an ENV variable with the password
set MSSQL_SA_PASSWORD="$PASSWORD"

# docker compose will use that ENV variable
docker compose up