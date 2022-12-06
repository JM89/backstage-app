# Backstage App

This is a playground [Backstage](https://backstage.io) implementation to test plugins and integrations.

The pre-requisites are documented [here](https://backstage.io/docs/getting-started/), this is useful to execute all commands described in the instructions below.

## Supported Features

- [x] Default Backstage Application setup (Run as docker container)
- [x] Integration with Postgres DB (local)

## Getting Started

The application runs as a docker container. It has a number of dependencies, which are made available for local development in a docker-compose too. The environment variables and secrets are stored in the local .env file (ignored by git). In the root folder, rename the .env-example to .env and defines your secrets. This will need to be set only once per development machine.

Run the command to create a package containing backstage:

```sh
sh build-backend.sh
```

To run the dependencies: 

```sh
docker compose -f docker-compose.yml -f docker-compose-deps.yml --env-file .env up --build
```

The application is available on the URL: http://localhost:7007/.

