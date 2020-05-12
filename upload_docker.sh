#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=abhimanyudwivedi/proj4
# Step 2:
# Authenticate & tag
export DOCKER_ID_USER="abhimanyudwivedi"
docker login
docker tag proj4 $DOCKER_ID_USER/proj4


# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID_USER/proj4