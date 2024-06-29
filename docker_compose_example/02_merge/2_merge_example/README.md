# Merge example

This example shows how to run the Gitea application alone, and with different database backends.

## Running

Run Gitea alone (no database):

`docker compose -f gitea-base.yml up`

Run Gitea with the postgres database:

`docker compose -f gitea-base.yml -f postgres-overlay.yml up`

Run Gitea with the mysql database:

`docker compose -f gitea-base.yml -f mysql-overlay.yml up`

## Troubleshooting

Since merging YAML tress is sensitive to context and uses a YAML library, debugging can be challenging. Some commons errors are below:

`did not find expected key`

This error means that the merge could not add the new values to a top level element. A path could not be found from a bottom level element to the top level element.

Example: adding environment  trying to merge these two snippets will result in `did not find expected key`:

```
services:
  server:
    image: gitea/gitea:1.22.0
    container_name: gitea
    environment:
      - USER_UID=1000
      - USER_GID=1000
```

with 

```
services:
  server:
      - GITEA__database__DB_TYPE=postgres
```

(notice the lack of `    environment:` under the `services:` element)