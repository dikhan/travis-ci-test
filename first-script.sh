#!/bin/bash

echo "first-script.sh"

if [ "$TRAVIS_BRANCH" == "master" ];then
  echo "Building master branch first..."
else if [ "$TRAVIS_PULL_REQUEST" == "1" ] || [ "$TRAVIS_EVENT_TYPE" == "pull_request" ];then
        echo "Building PR request first..."
    fi
fi