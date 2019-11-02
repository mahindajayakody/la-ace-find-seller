#!/bin/bash

#export GOPATH="/usr/local/go"
echo "From go.sh --> " $GOPATH

mkdir -p $GOPATH/src/github.com/linuxacademy/frontend

cp -R /code/*.go $GOPATH/src/github.com/linuxacademy/frontend

cd $GOPATH/src/github.com/linuxacademy/frontend

echo "after copy --> " $PWD
go get . 

# There's a strange issue, that I don't have time to deal with.
rm -fr $GOPATH/src/github.com/valyala/fasttemplate/vendor

echo "after remove  --> " $PWD

go get .

echo "after go get " 

