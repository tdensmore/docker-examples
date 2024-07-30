#!/usr/bin/env bash

DOCKERHUB_USERNAME="todddensmore978"
docker run -d -p 8080:5000 $DOCKERHUB_USERNAME/memes-r-us
