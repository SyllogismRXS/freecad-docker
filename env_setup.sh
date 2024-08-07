#!/bin/bash

# Get the host user's IDs for the entrypoint script
echo -e "USER_ID=$(id -u ${USER})\nGROUP_ID=$(id -g ${USER})" > .env

# Reference:
# https://stackoverflow.com/questions/16296753/can-you-run-gui-applications-in-a-linux-docker-container
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f .docker.xauth nmerge -

mkdir -p build
