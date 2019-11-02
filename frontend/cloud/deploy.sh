#!/bin/bash

# Import the settings from the common settings file
source ../../common/project_settings.sh

export GOPATH="$(dirname $PWD)/vendor"
#export GOPATH="/usr/local/go"


echo "GOPATH --> " $GOPATH
# Build the code into the vendor dir.
bash ../build/build.sh

echo "after  build.sh "
GOPATH="$(dirname "$PWD")/vendor" gcloud app deploy ../app/app.yaml -q

echo "GOPATH --> after deploy " $GOPATH