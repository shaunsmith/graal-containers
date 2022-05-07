#!/usr/bin/env bash

TAG="jibber-ni-gvmee22-jdk17:0.0.1"
APP_FILE=jibber
echo "Tag : ${TAG}"

echo "Build the app JAR, generate the app native executable and dockerize our app native executable."
docker login container-registry.oracle.com
docker build -f ./Dockerfiles/multistage/Dockerfile.gvmee-ni \
             --build-arg APP_FILE=${APP_FILE} \
             -t ${TAG} .
echo "DONE"
