#!/usr/bin/env bash
# Run this script from the project's root directory containing src and pom.xml

TAG="jibber-jar-gvmce22-jdk17:0.0.1"
JAR_FILE="jibber-0.0.1-SNAPSHOT-exec.jar" # Must match the value in pom.xml

echo "Tag : ${TAG}"
echo "Running multistage build to build the JAR and dockerize our app JAR."
docker build -f ./Dockerfiles/multistage/Dockerfile.gvmce-jar \
             --build-arg JAR_FILE=${JAR_FILE} \
             -t ${TAG} .
echo "DONE"
