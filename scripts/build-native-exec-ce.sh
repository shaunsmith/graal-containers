#!/usr/bin/env bash
# Run this script from the project's root directory containing src and pom.xml

TAG="jibber-ni-gvmce22-jdk17:0.0.1"
APP_FILE=jibber
echo "Tag : ${TAG}"

echo "Build the app JAR, generate the app native executable and dockerize our app native executable."
docker build -f ./Dockerfiles/multistage/Dockerfile.gvmce-ni \
             --build-arg APP_FILE=${APP_FILE} \
             -t ${TAG} .
echo "DONE"
