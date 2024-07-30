# Memes R Us

This repo provides the starting material for a Memes R Us website, used for various training efforts.

## Development

This repo can be leveraged in one of two ways, either directly using Compose or using the experimental Dev Environments feature in Docker Desktop.

### Compose

If you wish to use Compose, clone the repo locally and run the following command to spin everything up:

```
docker compose up -d
```

This will pull and build the required container images and start the application stack. Once it's all done, you can open the app at [http://localhost:8000](http://localhost:8000).

When you're done, tear everything down by running:

```
docker compose down
```

### Using Dev Environments

The easiest way to use the dev environment is to use [this link](https://open.docker.com/dashboard/dev-envs?url=https%3A%2F%2Fgithub.com%2Fmikesir87%2Fmemes-r-us). The **Create a Dev Environment** wizard will start. Once the environment is spun up, you can open the **Workspace** service in VS Code.

