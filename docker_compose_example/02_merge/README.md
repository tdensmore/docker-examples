# MERGE

Compose can take multiple files as input and will attempt to `merge` them into a single application directive.

```
docker compose -f compose.yml -f compose.admin.yml config
```

[documentation](https://docs.docker.com/compose/compose-file/13-merge/)

### Example

`docker compose -f compose.yml -f compose.admin.yml config`

The `include` directive will insert the database backend into the final compose directive. 

NOTE: All file references are relative to the first (base) file.