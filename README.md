# Thorium Docker Image

A docker image for [Thorium](https://github.com/Thorium-Sim/thorium).

**WIP, NOT WORKING YET**

## Usage

```bash
# Dockerfile usage
FROM: justintime50/thorium:latest

# docker-compose usage
image: justintime50/thorium:latest
```

## Docker Tags

- latest

## Building New Versions

Building Thorium requires at least 6gb of RAM dedicated via Docker. It's suggested to use 8gb of RAM while building.

### Manual Builds

```bash
docker build -t justintime50/thorium:2.4.1 --build-arg THORIUM_VERSION=2.4.1 .

sudo docker push justintime50/thorium:2.4.1
```

## Examples

There is a `docker-compose.yml` file included here as a reference. This file can be used to persist data and expose different ports.
