#!/bin/bash

echo "first-script.sh"

if [ "$TRAVIS_BRANCH" = "master" ] && [ "$TRAVIS_PULL_REQUEST_BRANCH" == "" ];then
  echo "Building master branch first..."
else if [ "$TRAVIS_PULL_REQUEST" != "" ] && [ "$TRAVIS_EVENT_TYPE" == "pull_request" ];then
        echo "Building PR request first..."
    fi
fi