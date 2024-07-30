docker run --name mongo -d mongo

docker exec -it mongo mongosh

docker exec -it CONTAINER_ID mongosh

db.runCommand(
   {
      hello: 1
   }
)


entrypoint
user
