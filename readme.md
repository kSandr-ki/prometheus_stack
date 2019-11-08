### Simple all-inclusive prometheus stack for host monitoring

- log collector by loki + promtail

for docker logs autodiscovery put ```*/5 * * * * docker ps --format '- targets: ["{{.ID}}"]\n  labels:\n    container_name: "{{.Names}}"' > /home/docker/loki/promtail/promtail-targets.yaml``` to crontab
- 4 bootstraped dashboards
- node-exporter
- cadvisor
- pushgateway

**for starting** run ```./start.sh```

**for reload prometheus config** run  ```./check.sh --reload```
