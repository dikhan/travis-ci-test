#!/bin/bash

echo "second-script.sh"

if [ "$TRAVIS_BRANCH" = "master" ];
then
    echo "Building master branch second..."
else if [ "$TRAVIS_PULL_REQUEST" = "true" ];
    then
        echo "Building PR request second..."
    fi
fi