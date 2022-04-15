#!/usr/bin/env bash

REPO=localhost
APP=jibber
TYPE=gvmee-jdk17
VER=0.0.1
TAG=${REPO}/${APP}:${TYPE}-${VER}
JAR_FILE=${APP}-${VER}-SNAPSHOT-exec.jar

echo "Tag : ${TAG}"
echo "Running multistage build to build the JAR and dockerize our app JAR."
docker login container-registry.oracle.com
docker build -f ./Dockerfiles/multistage/Dockerfile.gvmee-jar \
             --build-arg JAR_FILE=${JAR_FILE} \
             -t ${TAG} .
echo "DONE"
