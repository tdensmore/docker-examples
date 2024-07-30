# JS Docker GenAI Stack 🟡🐳🤖🦜🔗🦙 with 🧠 "memory"

> 👋 you can use this project with [Visual Studio Code Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers). Take a look at the `.devcontainer.json` file. The Docker image is defined int this repository [https://github.com/genai-for-all/javascript-workspace](https://github.com/genai-for-all/javascript-workspace).

> ✋ in case of problem like this one: "`permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock`" when you start Docke compose from the container, run this command: `sudo chmod 666 /var/run/docker.sock`

## Run all in containers

```bash
HTTP_PORT=8888 LLM=deepseek-coder OLLAMA_BASE_URL=http://ollama:11434 docker compose --profile container up
```
> The first time only, you must wait for the complete downloading of the model.

## Use the native Ollama install (like on macOS)

> To do for the first time only:
```bash
LLM=deepseek-coder
ollama pull ${LLM}

LLM=deepseek-coder:6.7b
ollama pull ${LLM}
```

```bash
HTTP_PORT=8888 LLM=deepseek-coder OLLAMA_BASE_URL=http://host.docker.internal:11434 docker compose --profile webapp up

HTTP_PORT=8888 LLM=deepseek-coder:6.7b OLLAMA_BASE_URL=http://host.docker.internal:11434 docker compose --profile webapp up
```

## Use the GPU from the Ollama container on Linux or Windows

> 🚧 This is a work in progress

## Query Ollama

```bash
curl -H "Content-Type: application/json" http://localhost:8080/prompt \
-d '{
  "question": "what are structs in Golang?"
}'
```

## Rebuild the WebApp image

> All in containers
```bash
HTTP_PORT=8888 LLM=deepseek-coder OLLAMA_BASE_URL=http://ollama:11434 docker compose --profile container up --build
```

> Use the Ollama local install (like on macOS)
```bash
HTTP_PORT=8888 LLM=deepseek-coder OLLAMA_BASE_URL=http://host.docker.internal:11434 docker compose --profile webapp up --build
```

## Development mode

For developping the application, use the `watch` command of Docker Compose

> All in containers
```bash
HTTP_PORT=8888 LLM=deepseek-coder OLLAMA_BASE_URL=http://ollama:11434 docker compose --profile container watch
```
> Use the Ollama local install (like on macOS)
```bash
HTTP_PORT=8888 LLM=deepseek-coder OLLAMA_BASE_URL=http://host.docker.internal:11434 docker compose --profile webapp watch
```

## FAQ

> **good to know:** ✋ How to fix `permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock`:
> ```bash
> sudo chmod 666 /var/run/docker.sock
> ```