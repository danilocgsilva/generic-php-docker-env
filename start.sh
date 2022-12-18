#!/bin/bash

read -p "Is your application already in the file_envs folder?" RESPONSE

if [[ $RESPONSE = "yes" ]]; then
    docker-compose up --build
else
    echo The files from application still are in the right place.
fi
