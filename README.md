# nmaas-hydra

Hydra as an NMaaS service/application

## Hydra Docker image

### Building

To build a Docker image including a Hydra server, run

```
docker build -t hydra .
```

### Running

This image can then be run using

```
docker run --rm -d -p 3000:3000 --name hydra hydra
```

This will start the container from the `hydra` image, use `hydra` for
the name of the running container, detach (background) the process
(`-d`), expose the Hydra server port under port `3000`, and remove the
container once it has terminated.

