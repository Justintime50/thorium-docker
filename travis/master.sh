
#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t justintime50/thorium:$ver --build-arg release=$ver .
docker push justintime50/thorium:$ver
