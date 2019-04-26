#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker push navikt/java:common
docker push navikt/java:8
docker push navikt/java:8-appdynamics
docker push navikt/java:10
docker push navikt/java:10-appdynamics
docker push navikt/java:11
docker push navikt/java:11-appdynamics
docker push navikt/java:12
docker push navikt/java:12-appdynamics
