# Docker Scout demo service

A repository containing an application and Dockerfile to demonstrate the use of Docker Scout to:
* analyze and remediate CVEs in a container image
* detect secrets and tokens embedded in container image layers

## demo 1 - CVES

Read the [Docker Scout Quickstart](https://docs.docker.com/scout/quickstart) for a full walkthrough. You can build and run the image with the following command:

```shell
docker build -t scout-demo:v1 .
docker run scout-demo:v1
```

The application consists of a basic ExpressJS server and uses an intentionally old version of Express and Alpine base image.

## demo 2 - Secrets

The following command will demonstrate how Scout can help prevent developers from accidentally including secrets in images they build. It will abort before pushing the image.

`docker buildx b . -f Dockerfile --attest type=sbom,generator=docker/scout-sbom-indexer:e5281bb5,secrets=exit --push --no-cache -t cdupuis/frontend:main`
 
 
