#!/bin/bash

# This gets the dependencies and puts them into the vendor/src dir 
echo "PWD from Build.sh ----->" $PWD
docker run --rm -it \
    -v "$(dirname "$PWD")/build:/build" \
    -v "$(dirname "$PWD")/app:/code" \
    -v "$(dirname "$PWD")/vendor/src:/go/src/" \
    golang:1.9 bash /build/go.sh
