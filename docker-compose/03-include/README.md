# INCLUDE

```
include: 
  - ../directory/compose.yaml # include another compose file
```

[documentation](https://docs.docker.com/compose/multiple-compose-files/include/)

### Example

`docker compose -f ./webapp/compose.yaml config`

The `include` directive will insert the database backend into the final compose directive. 

Compose `include` is not limited to relative paths, so referencing compose files from other teams's repositories is much easier.