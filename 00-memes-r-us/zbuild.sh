#!/usr/bin/env bash

DOCKERHUB_USERNAME="todddensmore978"
docker build -t $DOCKERHUB_USERNAME/memes-r-us --platform=linux/amd64 .
docker build -t $DOCKERHUB_USERNAME/memes-r-us .