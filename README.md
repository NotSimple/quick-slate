# quick-slate

Helpful scripts to run dockerized [slate docs](<https://github.com/slatedocs/slate>) for quickly and easily editing api documentation.

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

| Name | Description | Default |
| ------ |------ | ------ |
| docker_image | Docker image to use | itsnotsimple/quick-slate |
| docker_container_name | Name of docker container created with the [start server script](./start-server.sh) | quickslate_app |
| slate_source_path | path to the slate source folder on your local machine (automatically created at path specified) | slate/source |
| slate_build_path | path to the slate build folder on your local machine (automatically created at path specified) | slate/build |

## Dockerfile

The [Dockerfile included](./docker/Dockerfile) is the one used in building the [itsnotsimple/quick-slate image](https://hub.docker.com/r/itsnotsimple/quick-slate) hosted on dockerhub.

You can pull this image by running

```bash
docker pull itsnotsimple/quick-slate
```
