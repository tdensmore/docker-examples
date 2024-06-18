# Ordering

The order is important when merging files (the last one wins).
Examples showing this concept with ENV values

```
docker compose -f compose1.yml -f compose2.yml -f compose3.yml config
```

```
docker compose -f compose3.yml -f compose1.yml -f compose2.yml config
```

NOTE: Also notice the additions of default values for `name`, `networks`, and `ports`. 