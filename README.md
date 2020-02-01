# Thorium Docker Image

A docker image for [Thorium](https://github.com/Thorium-Sim/thorium).

**CURRENTLY BROKEN, STILL A WIP**

## Usage

```bash
# Dockerfile usage
FROM: justintime50/thorium:latest

# docker-compose usage
image: justintime50/thorium:latest

# CLI usage assuming you've built/pulled locally
docker run thorium
```

## Docker Tags

Coming soon

## Building New Versions

### Manual Builds

```bash
docker build -t justintime50/thorium:2.4.1 --build-arg THORIUM_VERSION=2.4.1 .

sudo docker push justintime50/thorium:2.4.1
```
