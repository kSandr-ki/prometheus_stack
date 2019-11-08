#!/bin/bash
# ids:
# 1 | node dash 1102
# 2 | node+docker dash
# 3 | full node dash
# 4 | node network dash

home_dashboard_id=2

docker-compose up -d

while ! nc -z 127.0.0.1 3000;
do
  echo sleeping;
  sleep 1;
done;
echo Grafana is up!;

echo Set default dashboard && ./set_home_dashboard.sh 2
echo You can access grafana on http://localhost:3000

