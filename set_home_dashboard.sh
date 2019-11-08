#!/bin/bash
[ -z $1 ] && dash_id=3 || dash_id=$1
curl -s 'http://127.0.0.1:3000/api/user/preferences' -X PUT 'http://127.0.0.1:3000' -H 'Accept-Encoding: gzip, deflate, br' -H 'X-Grafana-Org-Id: 1' -H 'Accept-Language: en-IN,en;q=0.9,en-GB;q=0.8,en-US;q=0.7,ml;q=0.6,mt;q=0.5' -H 'Content-Type: application/json;charset=UTF-8' -H 'Accept: application/json, text/plain, */*' -H 'Cache-Control: no-cache' -H 'Connection: keep-alive' --data-binary "{\"homeDashboardId\":${dash_id},\"theme\":\"\",\"timezone\":\"\"}" --compressed > /dev/null
