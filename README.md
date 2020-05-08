# quick-slate

Dockerized [slate docs](<https://github.com/slatedocs/slate>) for quick editing docs.

Inspired by [this repo](<https://github.com/slatedocs/slate/wiki/Docker>)

## Usage

To start the local slatedocs server run:

```bash
./start-server.sh
```

To stop the local slatedocs server run:

```bash
./stop-server.sh
```

To only perform a build:

```bash
./build.sh
```

## Config

In the [config file](./config) you can configure variables variables and functions used in the scripts

### Config Variables

| Name | Description |
| ------ |------ |
| docker_image | Docker image to use |
| docker_container_name | Name of docker container created with the [start server script](./start-server.sh) |
| slate_source_path | path to the slate source folder on your local machine (automatically created at path specified) |
| slate_build_path | path to the slate build folder on your local machine (automatically created at path specified) |

## Dockerfile

The [Dockerfile included](./docker/Dockerfile) is the one used in building the [itsnotsimple/quick-slate image](https://hub.docker.com/r/itsnotsimple/quick-slate) hosted on dockerhub.

You can pull this image by running

```bash
docker pull itsnotsimple/quick-slate
```
