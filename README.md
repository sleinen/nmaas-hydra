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

This will build the `hydra` container image if necessary, then start a
Hydra container along with another container to provide the required
PostgreSQL database.  The Hydra HTTP server port will be exposed under
port `3000`.
