#!/usr/bin/env bash
# Run this script from the project's root directory containing src and pom.xml

TAG="jibber-jar-gvmee22-jdk17:0.0.1"
JAR_FILE="jibber-0.0.1-SNAPSHOT-exec.jar" # Must match the value in pom.xml

echo "Tag : ${TAG}"
echo "Running multistage build to build the JAR and dockerize our app JAR."
docker login container-registry.oracle.com
docker build -f ./Dockerfiles/multistage/Dockerfile.gvmee-jar \
             --build-arg JAR_FILE=${JAR_FILE} \
             -t ${TAG} .
echo "DONE"
