#!/bin/bash

docker run --rm -ti --entrypoint="/bin/sh" -v `pwd`:/prom prom/prometheus -c "promtool check config /prom/prometheus/prometheus.yml" && [[ $@ =~ "--restart" ]] && echo restarting && docker-compose exec prometheus kill -HUP 1
