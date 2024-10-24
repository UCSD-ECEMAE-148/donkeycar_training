#!/bin/bash
container_name="donkey_v4"
echo "pulling out models ..."
docker cp $container_name:/root/mycar/models/ ./model_output/