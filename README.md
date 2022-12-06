# Backstage App

This is a playground [Backstage](https://backstage.io) implementation to test plugins and integrations.

The pre-requisites are documented [here](https://backstage.io/docs/getting-started/), this is useful to execute all commands described in the instructions below.

## Supported Features

- [x] Default Backstage Application setup
- [x] Integration with Postgres DB (local)

## Getting Started

### Configure (once) & Start the dependencies

The application has a number of dependencies, which are made available for local development in a docker-compose. For the dependencies, the environment variables and secrets are stored in the local .env file (ignored by git). In the root folder, rename the .env-example to .env and defines your secrets. This will need to be set only once per development machine.

To run the dependencies: 

```sh
docker compose --env-file .env up --build
```

### Configure (once) & Start the application

For the dependencies, the environment variables and secrets are stored in the `app-config.local.yaml` file (ignored by git). The first time you set it up:

```yaml
backend:
  database:
    client: pg
    connection:
      host: localhost
      port: 5432
      user: postgres
      password: security_matters123
```

Go to /backstage-app directory and run the command:

```sh
yarn dev
```

The application is available on the default URL and port: http://localhost:3000.

