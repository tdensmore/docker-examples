docker buildx bake -f docker-bake.hcl

By default, Bake uses the following lookup order to find the configuration file:

```
compose.yaml
compose.yml
docker-compose.yml
docker-compose.yaml
docker-bake.json
docker-bake.override.json
docker-bake.hcl
docker-bake.override.hcl
```

If you don't specify a file explicitly, Bake searches for the file in the current working directory. If more than one Bake file is found, all files are merged into a single definition.