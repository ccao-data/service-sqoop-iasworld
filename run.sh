#!/bin/bash
docker-compose -f create-jobs.yaml up
docker-compose -f run-jobs.yaml up --abort-on-container-exit
