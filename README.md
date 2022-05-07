# graal-containers

## Introduction

***Credits: @krisfoster https://github.com/krisfoster/graal-containers***

This repo will walk you through building containerised apps with GraalVM JDK and Native Image.

We will be using a Spring Boot application as our test-bed. This is a fairly simple app that
generates a nonsense verse, in the style of the poem Jabberwocky (by Lewis Carrol). To do this remarkable
feat it uses a Markov chain to model the text of the original poem and this model is then used to generate random text that appear to be like the original.

## Table of contents

- Section 1: [GraalVM Enterprise container images](./docs/01.md)
- Section 2: [App Jar](./docs/02.md)
    - 2.1: Build on local machine
    - 2.2: Run on local machine
- Section 3: [App Native Executable](./docs/03.md)
    - 3.1: Build on local machine
    - 3.2: Troubleshoot
    - 3.3: Run on local machine
- Section 4: [Clean up](./docs/04.md)
- Section 5: [OCI DevOps - Dynamic Groups and IAM Policies](./docs/05.md)
- Section 6: [OCI DevOps - Store your GitHub PAT, OCR user and OCR password in the OCI Vault](./docs/06.md)
- Section 7: [OCI DevOps - Build the app JAR (step0)](./docs/07.md)
- Section 8: [OCI DevOps - Build the app native executable using GraalVM Enterprise (step1-ee)](./docs/08.md)
- Section 9: [OCI DevOps - Deploy the runtime image containing the app native executable (step1-ee)](./docs/09.md)
- Section 10: [OCI DevOps - build the app native executable using GraalVM Community Edition (step1-ce)](./docs/10.md)
- Section 11: [OKE - Deploy and test the App on OKE](./docs/11.md)
