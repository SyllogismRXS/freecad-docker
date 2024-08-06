# FreeCAD Docker Environment

## Dependencies

1. Docker
1. docker compose

## Build

    cd /path/to/freecad-docker
    ./env_setup.sh # Creates .env file
    git clone --recurse-submodules https://github.com/FreeCAD/FreeCAD.git
    docker compose build

## Run

    # Start container and step into it
    docker compose up -d freecad
    docker exec -it freecad /bin/bash

    # Run executable inside container
    /mnt/FreeCAD/build/bin/FreeCAD
