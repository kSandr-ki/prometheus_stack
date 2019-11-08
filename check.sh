#!/bin/bash

docker run --rm -ti --entrypoint="/bin/sh" -v `pwd`:/prom prom/prometheus -c "promtool check config /prom/prometheus/prometheus.yml" && [[ $@ =~ "--reload" ]] && echo reloading && docker-compose exec prometheus kill -HUP 1
