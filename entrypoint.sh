#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 8983:8983 solr:$INPUT_VERSION"
if [ ! -z "$INPUT_CONFIG_PATH" ]
then
# REPO=`echo "$GITHUB_REPOSITORY" | cut -d "/" -f 2`
# INIT_SCRIPT_PATH="/home/runner/work/$REPO/$REPO/$INPUT_CONFIG_PATH"
# docker_run="$docker_run -v $INIT_SCRIPT_PATH:/myconfig"
docker_run="$docker_run -v /home/runner/work/solr-action/solr-action/test/resources/solr/conf:/opt/solr/server/solr/configsets/myconfig"
fi

if [ ! -z "$INPUT_CORE_NAME" ]
then
docker_run="$docker_run solr-create -c $INPUT_CORE_NAME"
fi

if [ ! -z "$INPUT_CONFIG_PATH" ]
then
docker_run="$docker_run -d /opt/solr/server/solr/configsets/myconfig"
fi

echo "::set-output name=outttt::$docker_run"
sh -c "$docker_run"
