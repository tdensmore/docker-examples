
## Docker inference


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