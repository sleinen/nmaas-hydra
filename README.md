# nmaas-hydra

Hydra as an NMaaS service/application

## Test Using docker-compose

You can start the Hydra and PostgreSQL containers using
docker-compose:

```
export POSTGRES_PASSWORD
POSTGRES_PASSWORD=$(pwgen -s 20 1)
docker-compose up
```

This will build the `hydra` container image if necessary, then start
several containers running various services:

* `hydra-server` running the HTTP interface, exposed on TCP port 3000
* `hydra-evaluator`
* `hydra-queue-runner`
* `db` running a PostgreSQL server

The `hydra-` containers share a common volume for their `HYDRA_DATA`
directory (`/var/lib/hydra`).

Before the Hydra containers are started, one or more initialization
containers will set up the required databases in PostgreSQL and create
an admin user `alice` with password `foobar`.
