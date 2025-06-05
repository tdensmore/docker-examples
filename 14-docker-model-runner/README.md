
# Docker inference

## Run with interactive shell

docker model run ai/smollm2:360M-Q4_K_M

## Run with query

docker model run ai/smollm2 "what model is running?"

NOTE: Notice that the answer is different every time.

## Access from the HOST

docker model run ai/smollm2:360M-Q4_K_M

example:

## Access from a CONTAINER

example:

docker model run  ai/smollm2:360M-Q4_K_M

# Package a model

## Step 1: Download a model, e.g. from HuggingFace

```
curl -L -o model.gguf https://huggingface.co/TheBloke/Mistral-7B-v0.1-GGUF/resolve/main/mistral-7b-v0.1.Q4_K_M.gguf
```

## Step 2: Package and push it
``
docker model package --gguf "$(pwd)/model.gguf" --push myorg/mistral-7b-v0.1:Q4_K_M
``





```
docker run --rm -it alpine/curl -s http://ml.docker.internal/ml/models/create -d '{"from": "psx7/llama1B"}' -w "Status: %{http_code}\n"
```

There's no loading because we're changing the model manager to use Hub
at the moment it's just downloading GGUF files from Hugging Face.

To see the progress:

`du -hs ~/.cache/huggingface/hub/models--psx7--llama1B`

Then query the model

```
curl --unix-socket $HOME/Library/Containers/com.docker.docker/Data/inference.sock localhost/ml/llama.cpp/v1/chat/completions -X POST -H "Content-Type: application/json" -d '{
    "model": "psx7/llama1B",
    "messages": [
      {"role": "user", "content": "When is Feb 29?"}
    ]
  }'
  ```