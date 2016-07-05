#!/bin/bash

# Deploy hooks are run via absolute path, so taking dirname of this script will give us the path to
# our deploy_hooks directory.

export GOROOT=/home/ec2-user/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=/home/ec2-user/work

# Restart Go server
sudo killall nor
go install nor
$GOPATH/bin/nor > /dev/null 2> /dev/null < /dev/null &

# Restart Nginx
sudo service nginx restart
