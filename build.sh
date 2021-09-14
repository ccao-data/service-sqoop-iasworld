#!/bin/bash

# Bash script to run the multi-stage build locally, rather than on GitLab

CCAO_REGISTRY_URL=registry.gitlab.com/ccao-data-science---modeling
IMAGE_NAME=services/service_sqoop_iasworld
docker build \
    -t ${CCAO_REGISTRY_URL}/${IMAGE_NAME}:build-native-hadoop-cache \
    -f build-native-hadoop.Dockerfile .

docker build \
    -t ${CCAO_REGISTRY_URL}/${IMAGE_NAME}:latest \
    -f build-sqoop.Dockerfile .
