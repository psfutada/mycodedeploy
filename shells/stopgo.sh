#!/bin/sh

sudo kill -9 `ps --no-heading -C go -o pid`
