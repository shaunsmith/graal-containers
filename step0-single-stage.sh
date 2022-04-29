#!/usr/bin/env bash

REPO=localhost
APP=jibber
TYPE=gvmee-jdk17
VER=0.0.1
CONTAINER=${REPO}/${APP}:${TYPE}-${VER}
JAR_FILE=${APP}-0.0.1-SNAPSHOT-exec.jar

echo "Container : ${CONTAINER}"

# echo "Building Java..."
# mvn clean package -DskipTests
# echo "DONE"

echo "Dockerizing our app.."
docker login container-registry.oracle.com
docker build -f ./Dockerfiles/Dockerfile.build.gvmee-jdk17 \
             --build-arg JAR_FILE=${JAR_FILE} \
             -t ${CONTAINER} .
echo "DONE"
