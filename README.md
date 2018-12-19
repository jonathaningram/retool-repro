# Reproducible for retool issue

See https://github.com/twitchtv/retool/issues/51 (I think it's the same issue).

## Requirements

- Docker

## Reproducing

Build and run the docker image, for example:

```sh
docker build -t retool-repro .
docker run -it --rm --name retool-repro retool-repro
```

Then, once you’re in the container, try and run the retool command that is commented out in the Dockerfile:

```sh
retool add github.com/jteeuwen/go-bindata/go-bindata origin/master
```

At the time of writing this is the error that occurs:

```console
root@c018e3c4c563:/myapp# retool add github.com/jteeuwen/go-bindata/go-bindata origin/master
retool: downloading github.com/jteeuwen/go-bindata/go-bindata
retool: setting version for github.com/jteeuwen/go-bindata/go-bindata
retool: fatal err: execution error on "git checkout ": chdir /myapp/_tools/src/github.com/jteeuwen/go-bindata/go-bindata: no such file or directory
```

Pulling it out:

```
retool: fatal err: execution error on "git checkout ": chdir /myapp/_tools/src/github.com/jteeuwen/go-bindata/go-bindata: no such file or directory
```
