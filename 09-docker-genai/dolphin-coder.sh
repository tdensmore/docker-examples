#!/bin/bash
ollama pull dolphincoder:7b
HTTP_PORT=9999 LLM=dolphincoder:7b OLLAMA_BASE_URL=http://host.docker.internal:11434 \
docker compose --profile webapp up
#docker compose --profile container up --build
#docker compose --profile webapp up
#docker compose --profile webapp 

