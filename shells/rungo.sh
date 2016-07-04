#!/bin/bash

# Deploy hooks are run via absolute path, so taking dirname of this script will give us the path to
# our deploy_hooks directory.

export GOROOT=/home/ec2-user/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=/home/ec2-user/work

go run $GOPATH/main.go &

