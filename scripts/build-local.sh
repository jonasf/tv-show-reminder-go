#!/usr/bin/env bash

cd $GOPATH/src/github.com/jonasf/tv-show-reminder-go/
for CMD in `ls cmd`; do
  cd cmd/$CMD
  go build
  cd -
done
