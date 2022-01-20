#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 8983:8983 solr:$INPUT_VERSION"
if [ ! -z "$INPUT_CONFIG_PATH" ]
then
# docker_run="$docker_run -v $PWD/$INPUT_CONFIG_PATH:/opt/solr/server/solr/configsets/myconfig:ro"
# docker_run="$docker_run -v /github/workspace/$INPUT_CONFIG_PATH:/opt/solr/server/solr/configsets/myconfig:ro"
fi

if [ ! -z "$INPUT_CORE_NAME" ]
then
docker_run="$docker_run solr-create -c $INPUT_CORE_NAME"
fi

if [ ! -z "$INPUT_CONFIG_PATH" ]
then
# docker_run="$docker_run -d /opt/solr/server/solr/configsets/myconfig"
docker_run="$docker_run -d /github/workspace/$INPUT_CONFIG_PATH"
fi

sh -c "$docker_run"
