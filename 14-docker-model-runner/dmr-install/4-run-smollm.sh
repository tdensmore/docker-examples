# Note: Do not include a trailing slash in DMR_HOST.
export DMR_HOST=http://localhost:12435
docker model list
docker model run ai/smollm2 "say docker model"
docker model run hf.co/QuantFactory/SmolLM2-135M-GGUF "say gguf model"
