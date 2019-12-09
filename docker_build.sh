#!/usr/bin/env bash


$(aws ecr get-login --registry-ids 835215910525 --no-include-email --region eu-west-1)

CONTAINER_IMAGE=835215910525.dkr.ecr.eu-west-1.amazonaws.com/my-fluentd:v1

docker build -t ${CONTAINER_IMAGE} .
docker push ${CONTAINER_IMAGE}

