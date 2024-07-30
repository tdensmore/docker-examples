docker compose -f gitea-base.yml up

docker compose -f gitea-base.yml -f postgres-overlay.yml up
docker compose -f gitea-base.yml -f mysql-overlay.yml up