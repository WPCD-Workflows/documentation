#!/usr/bin/env bash
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/WPCD-Workflows/documentation/tree/masetr
#        https://circleci.com/api/v1.1/project/<source, eg. github>/<user name>/<project name>/tree/<branch name>
#
#    --form revision=<commit hash>\
