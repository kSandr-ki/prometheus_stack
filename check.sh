#!/bin/bash

#docker run --rm -ti --entrypoint="/bin/sh" -v `pwd`:/prom prom/prometheus -c "promtool check config /prom/prometheus/prometheus.yml" && [[ $@ =~ "--reload" ]] && echo reloading && docker-compose exec prometheus kill -HUP 1

check_prom_config() {
docker-compose exec prometheus promtool check config /etc/prometheus/prometheus.yml
}

reload_prom_config(){
docker-compose exec prometheus kill -HUP 1
}

check_prom_config && [[ $@ =~ "--reload" ]] && echo reloading && reload_prom_config
