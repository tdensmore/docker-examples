#!/bin/bash
#HTTP_PORT=8888 LLM=stablelm2 OLLAMA_BASE_URL=http://host.docker.internal:11434 docker compose --profile webapp up
HTTP_PORT=8888 LLM=stablelm2 OLLAMA_BASE_URL=http://host.docker.internal:11434 docker compose --profile webapp watch
