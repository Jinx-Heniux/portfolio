#!/usr/bin/env bash

curl -i \
    -H "Accept: application/json" \
    -H "Content-Type: application/json" \
    -u "admin:admin" \
    -X POST -d '{
        "overwrite": true,
        "dashboard": {
              "annotations": {
                "list": []
              },
              "editable": true,
              "gnetId": null,
              "graphTooltip": 0,
              "hideControls": false,
              "id": 1,
              "links": [],
              "refresh": false,
              "rows": [
                {
                  "collapse": false,
                  "height": "250px",
                  "panels": [
                    {
                      "aliasColors": {},
                      "bars": false,
                      "datasource": "dht22",
                      "fill": 1,
                      "id": 1,
                      "legend": {
                        "avg": false,
                        "current": false,
                        "max": false,
                        "min": false,
                        "show": true,
                        "total": false,
                        "values": false
                      },
                      "lines": true,
                      "linewidth": 1,
                      "links": [],
                      "nullPointMode": "null",
                      "percentage": false,
                      "pointradius": 5,
                      "points": false,
                      "renderer": "flot",
                      "seriesOverrides": [],
                      "span": 12,
                      "stack": false,
                      "steppedLine": false,
                      "targets": [
                        {
                          "alias": "",
                          "dsType": "influxdb",
                          "groupBy": [],
                          "hide": false,
                          "measurement": "dht22",
                          "policy": "default",
                          "query": "SELECT \"humidity\" FROM \"dht22\".\"dht22\" WHERE $timeFilter",
                          "rawQuery": false,
                          "refId": "B",
                          "resultFormat": "time_series",
                          "select": [
                            [
                              {
                                "params": [
                                  "humidity"
                                ],
                                "type": "field"
                              }
                            ],
                            [
                              {
                                "params": [
                                  "temperature"
                                ],
                                "type": "field"
                              }
                            ]
                          ],
                          "tags": []
                        }
                      ],
                      "thresholds": [],
                      "timeFrom": null,
                      "timeShift": null,
                      "title": "Panel Title",
                      "tooltip": {
                        "shared": true,
                        "sort": 0,
                        "value_type": "individual"
                      },
                      "type": "graph",
                      "xaxis": {
                        "mode": "time",
                        "name": null,
                        "show": true,
                        "values": []
                      },
                      "yaxes": [
                        {
                          "format": "short",
                          "label": null,
                          "logBase": 1,
                          "max": null,
                          "min": null,
                          "show": true
                        },
                        {
                          "format": "short",
                          "label": null,
                          "logBase": 1,
                          "max": null,
                          "min": null,
                          "show": true
                        }
                      ]
                    }
                  ],
                  "repeat": null,
                  "repeatIteration": null,
                  "repeatRowId": null,
                  "showTitle": false,
                  "title": "Dashboard Row",
                  "titleSize": "h6"
                }
              ],
              "schemaVersion": 14,
              "style": "dark",
              "tags": [],
              "templating": {
                "list": []
              },
              "time": {
                "from": "now-3h",
                "to": "now"
              },
              "timepicker": {
                "refresh_intervals": [
                  "5s",
                  "10s",
                  "30s",
                  "1m",
                  "5m",
                  "15m",
                  "30m",
                  "1h",
                  "2h",
                  "1d"
                ],
                "time_options": [
                  "5m",
                  "15m",
                  "1h",
                  "6h",
                  "12h",
                  "24h",
                  "2d",
                  "7d",
                  "30d"
                ]
              },
              "timezone": "browser",
              "title": "New dashboard Copy",
              "version": 7
            }
            }
        }' \
    http://localhost:3600/api/dashboards/db


