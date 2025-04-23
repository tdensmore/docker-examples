#!/bin/sh

time curl --unix-socket $HOME/.docker/run/docker.sock \
    localhost/exp/vDD4.40/ml/llama.cpp/v1/chat/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "psx7/llama1B",
        "messages": [
            {
                "role": "system",
                "content": "You are a helpful assistant."
            },
            {
                "role": "user",
                "content": "Hello! My name is Jacob. Please write 500 words about the fall of Rome."
            }
        ]
    }'
