# Backstage App

This is a playground [Backstage](https://backstage.io) implementation to test plugins and integrations.

The pre-requisites are documented [here](https://backstage.io/docs/getting-started/), this is useful to execute all commands described in the instructions below.

## Supported Features

- [x] Backstage application setup (Run as docker container)
- [x] Integration with Postgres DB (local)
- [x] Add a custom software template for Python apps

## Getting Started

The application runs as a docker container. It has a number of dependencies, which are made available for local development in a docker-compose too. The environment variables and secrets are stored in the local .env file (ignored by git). In the root folder, rename the .env-example to .env and defines your secrets. This will need to be set only once per development machine.

To run the application: 

```sh
docker compose -f docker-compose.yml -f docker-compose-deps.yml --env-file .env up --build
```

Go to http://localhost:7007/.

## Usage

### Create a component from a custom template

In this example, we use a custom template I defined previously.

TODO: Instructions here.

<ins>Guidelines</ins>:

<details>
    <summary>Add your own custom template</summary> 
    TODO: Instructions here.
</details>

<details>
    <summary>Update an existing template</summary> 
    There is no automation around updating an existing template. 
    TODO: Instructions here.
</details>
