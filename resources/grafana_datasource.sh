#!/usr/bin/env bash

curl -i \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -u "admin:admin" \
    -X POST -d '{
      "name":"dht22",
      "type":"influxdb",
      "url":"http://influxdb:8086",
      "access":"proxy",
      "user": "influx_user",
      "password": "influx_password",
      "database": "influx_db_name",
      "basicAuth":false }' \
    http://nextrun.fr:3600/api/datasources