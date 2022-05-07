# graal-containers

## Introduction

***Credits: @krisfoster https://github.com/krisfoster/graal-containers***

This repo will walk you through building containerised apps with GraalVM JDK and Native Image.

We will be using a Spring Boot application as our test-bed. This is a fairly simple app that
generates a nonsense verse, in the style of the poem Jabberwocky (by Lewis Carrol). To do this remarkable
feat it uses a Markov chain to model the text of the original poem and this model is then used to generate random text that appear to be like the original.

## Table of contents

1. [GraalVM Enterprise container images](./docs/01.md)
2. [App Native Executable](./docs/02.md)
    - 2.1: Build on local machine
    - 2.2: Troubleshoot
    - 2.3: Run on local machine
3. [App Jar](./docs/03.md)
    - 3.1. Build on local machine
    - 3.2. Run on local machine
4. [Clean up](./docs/04.md)
5. OCI DevOps
    - 5.1: [OCI DevOps - Dynamic Groups and IAM Policies](./docs/05.md)
    - 5.2: [OCI DevOps - Store your GitHub PAT, OCR user and OCR password in the OCI Vault](./docs/06.md)
    - 5.3: [OCI DevOps - Build the app JAR](./docs/07.md)
    - 5.4: [OCI DevOps - Build the app native executable using GraalVM Enterprise](./docs/08.md)
    - 5.5: [OCI DevOps - Deploy the runtime image containing the app native executable](./docs/09.md)
    - 5.6: [OCI DevOps - Build the app native executable using GraalVM Community Edition](./docs/10.md)
6. [OKE - Deploy and test the App on OKE](./docs/11.md)
