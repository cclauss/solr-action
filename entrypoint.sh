#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 8983:8983 solr:$INPUT_VERSION"
if [ ! -z "$INPUT_CONFIG_PATH" ] then
docker_run="$docker_run -v $PWD/$INPUT_CONFIG_PATH:/myconfig:ro"
fi

if [ ! -z "$INPUT_CORE_NAME" ] then
docker_run="$docker_run solr-create -c $INPUT_CORE_NAME"
fi

if [ ! -z "$INPUT_CONFIG_PATH" ] then
docker_run="$docker_run -d /myconfig"
fi

sh -c "$docker_run"
