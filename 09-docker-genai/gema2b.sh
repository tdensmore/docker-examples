#!/bin/bash
# ollama pull gemma:2b
HTTP_PORT=8888 LLM=gemma:2b OLLAMA_BASE_URL=http://host.docker.internal:11434 \
docker compose --profile webapp up #watch
#docker compose --profile webapp up