#!/bin/bash


CONTAINER_ID = "docker ps | awk -F" "{Print $1}"
docker rm -f $CONTAINER_ID
