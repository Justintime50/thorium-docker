#!/bin/bash

docker build -it thorium .
docker ps | grep -q thorium
