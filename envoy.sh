#!/usr/bin/env bash

docker pull envoyproxy/envoy-dev:c886d56c39c7ef778712b670e01120951aea7489
docker run --rm -d -p 10000:10000 envoyproxy/envoy-dev:c886d56c39c7ef778712b670e01120951aea7489
curl -v localhost:10000
