# dotnet 8 vue 3 example

This folder contains a self-contained example of a containerized Vue3 frontend with a dotnet8 backend using a mssql database.

The whole stack is built using containers and run using docker compose.

## Run

### Option 1: start.sh

To run the stack, execute the `start.sh` script.

The script will ask for a password, set an environment variable, and start the stack using Docker compose.

(we don't want to commit passwords into our repo or store them in our continers)

### Option 2: docker compose

To use `docker compose` directly, manually set the database password using an environment variable:

`MSSQL_SA_PASSWORD="somevalue"`

then

`docker compose up`

## Frontend VUE

Sample VUE project created with 
`https://github.com/vuejs/create-vue`

## Backend dotnet core

Sample dotnet core project created with the CLI

`dotnet new webapi -n <PROJECT_NAME>`

## Database mssql

Normally a `cocker-compose.yml` file might use a standard database image reference like this:

    ```yaml
    database:
        image: mcr.microsoft.com/mssql/server:2022-latest
    ```
However this example will seed the database with data, so we build it using the `mssql_database` folder context.

The ENTRYPOINT calls the `scripts/initialize.sh` file which executes SQL contained in the `scripts/create-database.sql` file.

## References

[Example dotnet Dockerfiles](https://github.com/dotnet/dotnet-docker/blob/main/samples/complexapp/Dockerfile)

[Docker dotnet samples](https://docs.docker.com/samples/dotnet/)

### view on Mac

[Node versions with NVM](https://github.com/nvm-sh/nvm)

[Install VUE on Mac](https://cli.vuejs.org/guide/installation.html)

[Vue 3 CLI](https://github.com/vuejs/create-vue)

### dotnet on Mac

[Install dotnet on Mac](https://dev.to/rusydy/setting-up-net-on-macos-a-step-by-step-guide-14db)

[Create a dotnet project on Mac](https://dev.to/rusydy/setting-up-a-net-project-on-macos-590m)

[Create a dotnet project from CLI](https://www.c-sharpcorner.com/article/create-a-net-core-web-api-using-command-line/)

[Microsoft dotnet tutorial](https://learn.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-8.0&tabs=visual-studio-mac)