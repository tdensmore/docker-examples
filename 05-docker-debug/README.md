# Docker Debug


## exec into shell

The traditional way to debug involves attaching to a shell in a running container:

`docker run -it hello-go /bin/sh`

However this does not work in many cases (such as containers without shells).

Many golang programs are deployed into _scratch_ images.

These images not only lack a shell, they lack EVERYTHING.

## docker debug

However this works regardless of the container:

`docker debug hello-go`


