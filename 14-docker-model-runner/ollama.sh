#!/bin/sh

time curl -v http://ml.docker.internal/ml/ollama/v1/chat/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "llama3.2:1b",
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
