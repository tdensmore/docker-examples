#!/bin/bash
# ollama pull deepseek-coder:1.3b
HTTP_PORT=9999 LLM=deepseek-coder:1.3b OLLAMA_BASE_URL=http://host.docker.internal:11434 \
docker compose --profile webapp up
#docker compose --profile container up --build
#docker compose --profile webapp up
#docker compose --profile webapp 

